import 'package:either_dart/either.dart';
import '../core/error/app_error.dart';

import '../repository/github_repository.dart';
import '../entity/repository.dart';

class FindRepoByKeyUseCase {
  final GithubRepository repository;

  FindRepoByKeyUseCase({required this.repository});

  Future<Either<AppError, List<Repository>>> call(String param) async {
    return await repository.findRepoByKey(param);
  }
}
