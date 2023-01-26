import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:workout_buddy_finder/feature_auth/data/model/model.dart';
import '../../../core/core.dart';
import '../../domain/push_repository.dart';

@Injectable(as: PushRepository)
class PushRepositoryImpl implements PushRepository {
  final fcmSendUrl =
      "https://fcm.googleapis.com/v1/projects/workout-buddy-finder/messages:send";
  final dio = Dio(BaseOptions(
    headers: {
      'Content-Type': 'application/json',
      'Authorization':
          'Bearer ya29.a0AVvZVso_tzlmdZ6sinrJiU5G0tE-RKVvwirG3f1tOiGu2cjeKNNr6pIasq1Q3Qc0tPqjD_A_xewGUK-LklG0zV76v0fVwzoV9xLdmO2yss7-Naqu0y2kMwo3nxD8WjR3n3xlWB409GuAqmdTFVNAiwkeUXabaCgYKARISARESFQGbdwaIBiNsBTVly5tTGuXxGA8lvg0163',
    },
  ))
    ..interceptors.add(DioLoggingInterceptor(
      level: Level.body,
      compact: false,
    ));

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

  @override
  Future<void> sendDataPush(
    String userId,
    Map<String, dynamic> data,
  ) async {
    final _appUserQuery = _buildUserDocRef(userId);

    final appUser = (await _appUserQuery.get()).data()!;
    final pushData = {
      'message': {
        'token': appUser.deviceToken,
        'data': data,
      },
    };
    await _callPushApi(pushData);
  }

  @override
  Future<void> sendHybridPush(
    String userId,
    Map<String, dynamic> notification,
    Map<String, dynamic> data,
  ) async {
    final _appUserQuery = _buildUserDocRef(userId);

    final appUser = (await _appUserQuery.get()).data()!;
    final pushData = {
      'message': {
        'token': appUser.deviceToken,
        'data': data,
        'notification': notification,
      },
    };
    await _callPushApi(pushData);
  }

  @override
  Future<void> sendNotificationPush(
    String userId,
    Map<String, dynamic> notification,
  ) async {
    final _appUserQuery = _buildUserDocRef(userId);

    final appUser = (await _appUserQuery.get()).data()!;
    final pushData = {
      'message': {
        'token': appUser.deviceToken,
        'notification': notification,
      },
    };
    await _callPushApi(pushData);
  }

  DocumentReference<AppUser> _buildUserDocRef(String userId) {
    return FirebaseFirestore.instance
        .collection(col_users)
        .doc(userId)
        .withConverter(
          fromFirestore: (snapshot, options) =>
              AppUserModel.fromJson(snapshot.data()!).toEntity([]),
          toFirestore: (value, options) => {},
        );
  }

  Future<void> _callPushApi(Map<String, dynamic> data) async {
    try {
      final response = await dio.post(fcmSendUrl, data: data);
      debugPrint(response.data.toString());
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
