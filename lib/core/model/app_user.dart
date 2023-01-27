part of 'models.dart';

@freezed
class AppUser with _$AppUser {
  bool get isEmpty => userId.isEmpty;

  const AppUser._();

  const factory AppUser({
    required String userId,
    @JsonKey(fromJson: dateTimeFromJson, toJson: dateTimeToJson)
        required DateTime registered,
    @Default('') String name,
    @Default('male')String gender,
    @JsonKey(fromJson: dateTimeFromJson, toJson: dateTimeToJson)
    required DateTime birthdate,
    @Default('daily1hr') String availability,
    @Default(10) int nearbyDistance,
    @Default('') String email,
    @Default('') String profilePicture,
    @Default(0.0) double lat,
    @Default(0.0) double long,
    @Default("") String geoHash,
    @Default([]) List<String> interestList,
  }) = _AppUser;

  factory AppUser.fromJson(Map<String, dynamic> json) =>
      _$AppUserFromJson(json);

  factory AppUser.empty() => AppUser(
        userId: '',
        registered: DateTime.now(),
        name: '',
        gender: '',
        birthdate: DateTime.now(),
        availability: '',
        nearbyDistance: 0,
        email: '',
        profilePicture: '',
        lat: 0.0,
        long: 0.0,
        geoHash: '',
        interestList: [],
      );
}
