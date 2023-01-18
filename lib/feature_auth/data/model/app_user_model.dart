part of 'model.dart';

@freezed
class AppUserModel with _$AppUserModel {
  const AppUserModel._();

  factory AppUserModel({
    required String userId,
    @JsonKey(fromJson: dateTimeFromJson, toJson: dateTimeToJson)
        required DateTime registered,
    @Default('') String name,
    @Default('male') String gender,
    @Default('daily1hr') String availability,
    @Default(2) int nearbyDistance,
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
        registered: appUser.registered,
        name: appUser.name,
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
        name: name,
        gender: gender,
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
