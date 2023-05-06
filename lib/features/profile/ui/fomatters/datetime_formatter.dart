import 'package:intl/intl.dart';

extension DateTimeFormatter on DateTime {
  String formatTo(String format) => DateFormat(format).format(this);
}
