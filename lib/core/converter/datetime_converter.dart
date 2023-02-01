class DateTimeConverter {
  static DateTime? dateTimeFromJson(int? millisecondsSinceEpoch) {
    if (millisecondsSinceEpoch == null) {
      return null;
    }

    return DateTime.fromMillisecondsSinceEpoch(millisecondsSinceEpoch);
  }

  static int? dateTimeToJson(DateTime? timestamp) {
    if (timestamp == null) {
      return null;
    }

    return timestamp.millisecondsSinceEpoch;
  }
}
