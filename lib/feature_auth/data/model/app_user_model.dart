part of 'model.dart';

@freezed
class AppUserModel with _$AppUserModel {
  const AppUserModel._();

  factory AppUserModel({
    required String userId,
    required String deviceToken,
    @JsonKey(fromJson: dateTimeFromJson, toJson: dateTimeToJson)
        required DateTime registered,
    @Default('') String name,
    @Default('male') String gender,
    @JsonKey(fromJson: dateTimeFromJson, toJson: dateTimeToJson)
    DateTime? birthdate,
    @Default('daily1hr') String availability,
    @Default(10) int nearbyDistance,
    @Default('') String email,
    @Default('') String profilePicture,
    @Default(0.0) double lat,
    @Default(0.0) double long,
    @Default("") String geoHash,
    @Default([]) List<String> interestsList,
  }) = _AppUserModel;

  factory AppUserModel.fromJson(Map<String, dynamic> json) =>
      _$AppUserModelFromJson(json);

  factory AppUserModel.fromEntity(AppUser appUser) => AppUserModel(
        userId: appUser.userId,
        deviceToken: appUser.deviceToken,
        registered: appUser.registered,
        name: appUser.name,
        birthdate: appUser.birthdate,
        availability: appUser.availability,
        nearbyDistance: appUser.nearbyDistance,
        gender: appUser.gender,
        email: appUser.email,
        profilePicture: appUser.profilePicture,
        lat: appUser.lat,
        long: appUser.long,
        geoHash: appUser.geoHash,
        interestsList: appUser.interestList.map((e) => e.id).toList(),
      );

  AppUser toEntity(List<Interest> interestList) => AppUser(
        userId: userId,
        deviceToken: deviceToken,
        name: name,
        gender: gender,
        birthdate: birthdate ?? DateTime.now(),
        availability: availability,
        nearbyDistance: nearbyDistance,
        email: email,
        profilePicture: profilePicture,
        registered: registered,
        lat: lat,
        long: long,
        geoHash: geoHash,
        interestList: interestList,
      );
}
