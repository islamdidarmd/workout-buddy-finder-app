import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:either_dart/src/either.dart';
import 'package:injectable/injectable.dart';
import 'package:workout_buddy_finder/feature_auth/data/model/model.dart';
import 'package:workout_buddy_finder/core/model/models.dart';
import '../../../core/firestore_constants.dart';
import '../../../core/error/app_error.dart';
import '../model/model.dart';
import 'profile_repository.dart';

@Injectable(as: ProfileRepository)
class ProfileRepositoryImpl implements ProfileRepository {
  @override
  Future<Either<List<Interest>, AppError>> getInterestList() async {
    final collection =
        await FirebaseFirestore.instance.collection('interests').get();
    try {
      final interestList = collection.docs
          .map((doc) => InterestModel.fromJson(doc.data()).toEntity())
          .toList(growable: false);

      return Left(interestList);
    } catch (e) {
      return Right(InvalidDataError());
    }
  }

  @override
  Future<Either<void, AppError>> addInterestList(
    AppUser appUser,
      String interestId,
  ) async {
    final usersDb = FirebaseFirestore.instance.collection(users);
    final userDoc = usersDb.doc(appUser.userId);

    final appUserModel = AppUserModel.fromEntity(appUser);
    final List<String> list = []
      ..addAll(appUserModel.interestsList)
      ..add(interestId);

    final updateData = {
      userInterestList: list,
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
      String interestId,
  ) async {
    final usersDb = FirebaseFirestore.instance.collection(users);
    final userDoc = usersDb.doc(appUser.userId);

    final appUserModel = AppUserModel.fromEntity(appUser);
    final List<String> list = []
      ..addAll(appUserModel.interestsList)
      ..remove(interestId);

    final updateData = {
      userInterestList: list,
    };
    try {
      await userDoc.update(updateData);

      return Left(null);
    } catch (e) {
      return Right(UnknownError());
    }
  }
}
