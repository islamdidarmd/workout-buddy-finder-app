import 'package:either_dart/either.dart';

import 'datasource/github_remote_data_source.dart';
import 'package:workout_buddy_finder/domain/domain.dart';

class GithubRepositoryImpl implements GithubRepository {
  final GithubRemoteDataSource dataSource;

  const GithubRepositoryImpl({
    required this.dataSource,
  });

  @override
  Future<Either<AppError, List<Repository>>> findRepoByKey(String key) async {
    final result = await dataSource.findRepoByKey(key);
    return result.fold((left) => Left(left), (right) => Right(right.toEntity()));
  }
}
