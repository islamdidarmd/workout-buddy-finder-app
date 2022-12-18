import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:either_dart/src/either.dart';
import 'package:injectable/injectable.dart';
import 'package:workout_buddy_finder/feature_auth/data/model/model.dart';
import 'package:workout_buddy_finder/feature_auth/domain/entity/app_user.dart';
import '../../../app/firestore_constants.dart';
import '../../../core/error/app_error.dart';
import '../model/model.dart';
import 'profile_repository.dart';

@Injectable(as: ProfileRepository)
class ProfileRepositoryImpl implements ProfileRepository {
  @override
  Future<Either<List<InterestModel>, AppError>> getInterestList() async {
    final collection =
        await FirebaseFirestore.instance.collection('interests').get();
    try {
      final interestList = collection.docs
          .map((doc) => InterestModel.fromJson(doc.data()))
          .toList(growable: false);

      return Left(interestList);
    } catch (e) {
      return Right(InvalidDataError());
    }
  }

  @override
  Future<Either<void, AppError>> addInterestList(
    AppUser appUser,
    InterestModel interestModel,
  ) async {
    final usersDb = FirebaseFirestore.instance.collection(users);
    final userDoc = usersDb.doc(appUser.userId);
    final appUserModel = AppUserModel.fromEntity(appUser)
        .copyWith(interestsList: appUser.interestList);
    final List<InterestModel> list = []
      ..addAll(appUserModel.interestsList)
      ..add(interestModel);

    final updateData = {
      'interest': list.map((e) => e.toJson()).toList(),
    };
    try {
      await userDoc.update(updateData);

      return Left(null);
    } catch (e) {
      return Right(UnknownError());
    }
  }

  @override
  Future<Either<void, AppError>> removeInterestList(
    AppUser appUser,
    InterestModel interestModel,
  ) async {
    final usersDb = FirebaseFirestore.instance.collection(users);
    final userDoc = usersDb.doc(appUser.userId);
    final appUserModel = AppUserModel.fromEntity(appUser)
        .copyWith(interestsList: appUser.interestList);
    final List<InterestModel> list = []
      ..addAll(appUserModel.interestsList)
      ..removeWhere((e) => e.docId == interestModel.docId);

    final updateData = {
      'interest': list.map((e) => e.toJson()).toList(),
    };
    try {
      await userDoc.update(updateData);

      return Left(null);
    } catch (e) {
      return Right(UnknownError());
    }
  }
}
