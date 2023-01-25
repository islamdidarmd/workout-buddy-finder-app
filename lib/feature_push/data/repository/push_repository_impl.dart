import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import '../../../core/core.dart';
import '../../domain/push_repository.dart';

@Injectable(as: PushRepository)
class PushRepositoryImpl implements PushRepository {
  @override
  Future<void> uploadDeviceToken() async {
    final currentUser = FirebaseAuth.instance.currentUser;
    if (currentUser == null) {
      return;
    }
    final _tokenUpdateQuery =
        FirebaseFirestore.instance.collection(col_users).doc(currentUser.uid);
    try {
      final deviceToken = await FirebaseMessaging.instance.getToken() ?? '';

      await _tokenUpdateQuery.update({
        field_device_token: deviceToken,
      });
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
