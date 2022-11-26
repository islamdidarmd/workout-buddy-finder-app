import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';
import 'package:workout_buddy_finder/data/network/networking_client.dart';
import 'package:workout_buddy_finder/domain/domain.dart';
import '../../model/models.dart';

abstract class GithubRemoteDataSource {
  Future<Either<AppError, RepoSearchResponse>> findRepoByKey(String key);
}

class GithubRemoteDataSourceImpl implements GithubRemoteDataSource {
  final NetworkingClient networkingClient;

  const GithubRemoteDataSourceImpl({
    required this.networkingClient,
  });

  @override
  Future<Either<AppError, RepoSearchResponse>> findRepoByKey(String key) async {
    try {
      final Response<Map<String, dynamic>> response =
          await networkingClient.get(
        url: "https://api.github.com/search/repositories",
        queryParameters: {
          'q': key,
        },
      );

      if (response.data != null) {
        final decoded = json.decode(response.toString());
        final parsed = RepoSearchResponse.fromJson(decoded);
        return Right(parsed);
      } else {
        return Left(AppError.unknown());
      }
    } catch (e) {
      return Left(AppError.unknown());
    }
  }
}
