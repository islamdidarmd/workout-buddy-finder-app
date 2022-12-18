import 'package:either_dart/either.dart';
import 'package:workout_buddy_finder/feature_auth/auth.dart';

import '../../../core/core.dart';
import '../model/model.dart';

abstract class ProfileRepository {
  Future<Either<List<InterestModel>, AppError>> getInterestList();
  Future<Either<void, AppError>> addInterestList(AppUser appUser, InterestModel interestModel);
  Future<Either<void, AppError>> removeInterestList(AppUser appUser, InterestModel interestModel);
}
