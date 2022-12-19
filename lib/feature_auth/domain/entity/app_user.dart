import 'package:workout_buddy_finder/feature_profile/data/data.dart';

class AppUser {
  final String userId;
  final DateTime registered;
  final String name;
  final String email;
  final String profilePicture;
  final double lat;
  final double long;
  final List<String> interestList;

  bool get isEmpty => userId.isEmpty;

  AppUser({
    required this.userId,
    required this.registered,
    required this.name,
    required this.email,
    required this.profilePicture,
    required this.lat,
    required this.long,
    required this.interestList,
  });

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
