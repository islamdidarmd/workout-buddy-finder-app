import 'package:flutter_test/flutter_test.dart';
import 'package:workout_buddy_finder/core/core.dart';

void main() {
  test('Datetime gets converted to milliseconds', () {
    final timeStamp = DateTime.now();
    final millis = timeStamp.millisecondsSinceEpoch;

    final converted = DateTimeConverter.dateTimeToJson(timeStamp);
    expect(converted, millis);
  });

  test('Milliseconds gets converted to DateTime', () {
    final timeStamp = DateTime.now();
    final millis = timeStamp.millisecondsSinceEpoch;

    final converted = DateTimeConverter.dateTimeFromJson(millis);
    expect(converted!.millisecondsSinceEpoch, timeStamp.millisecondsSinceEpoch);
  });
}
