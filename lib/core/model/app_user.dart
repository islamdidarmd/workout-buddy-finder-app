part of 'models.dart';

@freezed
class AppUser with _$AppUser {
  bool get isEmpty => userId.isEmpty;

  const AppUser._();

  const factory AppUser({
    required String userId,
    required DateTime registered,
    required String name,
    required String gender,
    required DateTime birthdate,
    required String availability,
    required int nearbyDistance,
    required String email,
    required String profilePicture,
    required double lat,
    required double long,
    required String geoHash,
    required List<Interest> interestList,
  }) = _AppUser;

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
