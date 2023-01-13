import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import '../../../core/model/models.dart';
import '../../../feature_auth/data/model/model.dart';
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
              AppUserModel.fromJson(snapshot.data()!),
          toFirestore: (_, __) => {},
        );
    try {
      final appUserModel = await profileQuery.get();

      return appUserModel
          .data()
          ?.toEntity(await _getUserInterestList(appUserModel.data()!));
    } catch (e) {
      debugPrint(e.toString());
    }

    return null;
  }

  Future<List<Interest>> _getUserInterestList(AppUserModel appUserModel) async {
    final interestCollection =
        FirebaseFirestore.instance.collection(col_interests);
    final interestList = <Interest>[];

    for (String e in appUserModel.interestsList) {
      final snapshot = await interestCollection.doc(e).get();
      final data = snapshot.data();
      if (data != null) {
        final model = InterestModel.fromJson(data);
        interestList.add(model.toEntity());
      }
    }

    return interestList;
  }
}
