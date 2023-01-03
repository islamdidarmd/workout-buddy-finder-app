import 'package:either_dart/either.dart';

import '../../../core/core.dart';

abstract class ProfileRepository {
  Future<Either<List<Interest>, AppError>> getInterestList();
  Future<Either<void, AppError>> addInterestList(AppUser appUser, String interestId);
  Future<Either<void, AppError>> removeInterestList(AppUser appUser, String interestId);
  Future<Either<void, AppError>> updateProfilePicture(AppUser appUser, String newUrl);
}
