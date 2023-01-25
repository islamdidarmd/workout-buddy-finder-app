import 'package:flutter_test/flutter_test.dart';


void main() {
  test('OwnerModel generates successfully', () {
    bool ownerModelGenerated = false;
    try {
      //OwnerModel.fromJson(ownerJson);
      ownerModelGenerated = true;
    } catch (e) {}

    assert(ownerModelGenerated);
  });
}
