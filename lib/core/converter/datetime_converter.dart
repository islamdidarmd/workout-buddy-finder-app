DateTime dateTimeFromJson(int? millisecondsSinceEpoch) {
  if (millisecondsSinceEpoch == null) {
    return DateTime.now();
  }

  return DateTime.fromMillisecondsSinceEpoch(millisecondsSinceEpoch);
}

int dateTimeToJson(DateTime? timestamp) {
  if (timestamp == null) {
    return -1;
  }

  return timestamp.millisecondsSinceEpoch;
}
