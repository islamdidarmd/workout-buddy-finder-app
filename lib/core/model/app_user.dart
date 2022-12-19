part of 'models.dart';

@freezed
class AppUser with _$AppUser {
  const AppUser._();

  factory AppUser({
    required String userId,
    required DateTime registered,
    required String name,
    required String email,
    required String profilePicture,
    required double lat,
    required double long,
    required List<Interest> interestList,
  }) = _AppUser;

  factory AppUser.empty() => AppUser(
        userId: '',
        registered: DateTime.now(),
        name: '',
        email: '',
        profilePicture: '',
        lat: 0.0,
        long: 0.0,
        interestList: [],
      );
}