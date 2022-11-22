import 'package:workout_buddy_finder/data/model/models.dart';
import 'package:flutter_test/flutter_test.dart';

import 'mocks/repository_mock_json.dart';

void main() {
  test('Repository Model generates successfully', () {
    bool repositoryModelGenerated = false;
    try {
      RepositoryModel.fromJson(repositoryMockJson);
      repositoryModelGenerated = true;
    } catch (e) {}

    assert(repositoryModelGenerated);
  });
}
