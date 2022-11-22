import 'package:either_dart/either.dart';
import 'package:workout_buddy_finder/domain/core/error/app_error.dart';

import '../entity/repository.dart';

abstract class GithubRepository {
  Future<Either<AppError, List<Repository>>> findRepoByKey(String key);
}
