import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import '../../../core/core.dart';

@injectable
class UpdateProfileHiddenStatusUseCase {
  Future<void> call({
    required String userId,
    required bool status,
  }) async {
    final query = FirebaseFirestore.instance.collection(col_users).doc(userId);

    try {
      final result = await query.update({
        field_is_hidden: status,
      });
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
