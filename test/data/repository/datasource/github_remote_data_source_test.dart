/*
import 'package:either_dart/either.dart';
import 'package:workout_buddy_finder/data/model/models.dart';
import 'package:workout_buddy_finder/data/repository/datasource/github_remote_data_source.dart';
import 'package:workout_buddy_finder/domain/core/error/app_error.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../network/fake_networking_client.dart';

void main() {
  test('Search Repo list by keyword', () async {
    final client = FakeNetworkingClient();
    client.defaultResponse = {};

    final GithubRemoteDataSource dataSource =
        GithubRemoteDataSourceImpl(networkingClient: client);

    final Either<AppError, RepoSearchResponse> response = await dataSource.findRepoByKey("key");

    assert (response.isLeft);
  });
}
*/
