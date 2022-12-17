import 'package:either_dart/either.dart';

import '../../../core/core.dart';
import '../model/model.dart';

abstract class ProfileRepository {
  Future<Either<List<InterestModel>, AppError>> getInterestList();
}
