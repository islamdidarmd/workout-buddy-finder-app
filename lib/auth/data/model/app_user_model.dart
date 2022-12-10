part of 'model.dart';

@freezed
class AppUserModel with _$AppUserModel {
  const AppUserModel._();

  factory AppUserModel({
    required String userId,
    @JsonKey(fromJson: dateTimeFromJson, toJson: dateTimeToJson)
        required DateTime registered,
    @Default('') String name,
    @Default('') String email,
    @Default('') String profilePicture,
    @Default(0.0) double lat,
    @Default(0.0) double long,
  }) = _AppUserModel;

  factory AppUserModel.fromJson(Map<String, dynamic> json) =>
      _$AppUserModelFromJson(json);

  AppUser toEntity() => AppUser(
        userId: userId,
        name: name,
        email: email,
        profilePicture: profilePicture,
        registered: registered,
        lat: lat,
        long: long,
      );
}
