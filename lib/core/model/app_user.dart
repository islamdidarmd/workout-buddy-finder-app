part of 'models.dart';

@freezed
class AppUser with _$AppUser {
  bool get isEmpty => userId.isEmpty;

  const AppUser._();

  const factory AppUser({
    required String userId,
    @JsonKey(fromJson: dateTimeFromJson, toJson: dateTimeToJson)
        required DateTime registered,
    @JsonKey(name: 'name') @Default('') String name,
    @JsonKey(name: 'gender') @Default('male') String gender,
    @JsonKey(name: 'birthdate', fromJson: dateTimeFromJson, toJson: dateTimeToJson)
        required DateTime birthdate,
    @JsonKey(name: 'last_seen', fromJson: dateTimeFromJson, toJson: dateTimeToJson)
        required DateTime lastSeen,
    @JsonKey(name: 'availability') @Default('daily1hr') String availability,
    @JsonKey(name: 'nearbyDistance') @Default(10) int nearbyDistance,
    @JsonKey(name: 'email') @Default('') String email,
    @JsonKey(name: 'profilePicture') @Default('') String profilePicture,
    @JsonKey(name: 'lat') @Default(0.0) double lat,
    @JsonKey(name: 'long') @Default(0.0) double long,
    @JsonKey(name: 'geoHash') @Default("") String geoHash,
    @JsonKey(name: 'interestsList') @Default([]) List<String> interestList,
    @JsonKey(name: 'is_hidden') @Default(false) bool isHidden,
  }) = _AppUser;

  factory AppUser.fromJson(Map<String, dynamic> json) =>
      _$AppUserFromJson(json);

  factory AppUser.empty() => AppUser(
        userId: '',
        registered: DateTime.now(),
        name: '',
        gender: '',
        birthdate: DateTime.now(),
        lastSeen: DateTime.now(),
        availability: '',
        nearbyDistance: 0,
        email: '',
        profilePicture: '',
        lat: 0.0,
        long: 0.0,
        geoHash: '',
        interestList: [],
        isHidden: false,
      );
}
