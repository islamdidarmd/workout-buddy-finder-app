import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import '../../../core/model/models.dart';
import '../../../feature_profile/data/model/model.dart';
import '../../domain/domain.dart';

import '../../../core/firestore_constants.dart';

@Injectable(as: VisitUserRepository)
class VisitUserRepositoryImpl implements VisitUserRepository {
  @override
  Future<AppUser?> getAppUserFromId({required String userId}) async {
    final profileQuery = FirebaseFirestore.instance
        .collection(col_users)
        .doc(userId)
        .withConverter(
          fromFirestore: (snapshot, _) =>
              AppUser.fromJson(snapshot.data()!),
          toFirestore: (_, __) => {},
        );
    try {
      final appUser = await profileQuery.get();

      return appUser.data();
    } catch (e) {
      debugPrint(e.toString());
    }

    return null;
  }
}
