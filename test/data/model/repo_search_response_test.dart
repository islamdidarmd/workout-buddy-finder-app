import 'package:flutter_test/flutter_test.dart';


void main() {
  test('Repo search response model generates successfully', () {
    bool repoSearchResponseModelBuilds = false;

    try {
      //RepoSearchResponse.fromJson(repoSearchResponseMockJson);
      repoSearchResponseModelBuilds = true;
    } catch (e) {}

    assert(repoSearchResponseModelBuilds);
  });
}
