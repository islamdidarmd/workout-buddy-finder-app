DateTime dateTimeFromJson(int millisecondsSinceEpoch) =>
    DateTime.fromMillisecondsSinceEpoch(millisecondsSinceEpoch);

int dateTimeToJson(DateTime timestamp) => timestamp.millisecondsSinceEpoch;
