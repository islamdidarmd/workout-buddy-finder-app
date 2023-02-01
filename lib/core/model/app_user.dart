part of 'models.dart';

@freezed
class AppUser with _$AppUser {
  bool get isEmpty => userId.isEmpty;

  bool get isInComplete => gender.isEmpty || birthdate == null;

  const AppUser._();

  const factory AppUser({
    required String userId,
    @JsonKey(fromJson: DateTimeConverter.dateTimeFromJson, toJson: DateTimeConverter.dateTimeToJson)
        required DateTime? registered,
    @JsonKey(name: 'name') @Default('') String name,
    @JsonKey(name: 'gender') @Default('') String gender,
    @JsonKey(name: 'birthdate', fromJson: DateTimeConverter.dateTimeFromJson, toJson: DateTimeConverter.dateTimeToJson)
    DateTime? birthdate,
    @JsonKey(name: 'last_seen', fromJson: DateTimeConverter.dateTimeFromJson, toJson: DateTimeConverter.dateTimeToJson)
    DateTime? lastSeen,
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
        birthdate: null,
        lastSeen: null,
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
