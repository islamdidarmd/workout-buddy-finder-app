class AppUser {
  final String userId;
  final DateTime registered;
  final String name;
  final String email;
  final String profilePicture;
  final double lat;
  final double long;

  bool get isEmpty => userId.isEmpty;

  AppUser({
    required this.userId,
    required this.registered,
    required this.name,
    required this.email,
    required this.profilePicture,
    required this.lat,
    required this.long,
  });

  factory AppUser.empty() => AppUser(
        userId: '',
        registered: DateTime.now(),
        name: '',
        email: '',
        profilePicture: '',
        lat: 0.0,
        long: 0.0,
      );
}
