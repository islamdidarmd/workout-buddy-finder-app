import 'package:workout_buddy_finder/data/model/models.dart';
import 'package:flutter_test/flutter_test.dart';

import 'mocks/owner_mock_json.dart';

void main() {
  test('OwnerModel generates successfully', () {
    bool ownerModelGenerated = false;
    try {
      OwnerModel.fromJson(ownerJson);
      ownerModelGenerated = true;
    } catch (e) {}

    assert(ownerModelGenerated);
  });
}
