part of 'model.dart';

@freezed
class AppUserModel with _$AppUserModel {
  const AppUserModel._();

  factory AppUserModel({
    required String userId,
    @JsonKey(fromJson: dateTimeFromJson, toJson: dateTimeToJson)
        required DateTime registered,
    String? name,
    String? email,
    String? profilePicture,
  }) = _AppUserModel;

  factory AppUserModel.fromJson(Map<String, dynamic> json) =>
      _$AppUserModelFromJson(json);

  AppUser toEntity() => AppUser(
        userId: userId,
        name: name,
        email: email,
        profilePicture: profilePicture,
        registered: registered,
      );
}
