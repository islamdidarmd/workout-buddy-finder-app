class AppUser {
  final String userId;
  final DateTime registered;
  final String name;
  final String email;
  final String profilePicture;

  bool get isEmpty => userId.isEmpty;

  AppUser({
    required this.userId,
    required this.registered,
    required this.name,
    required this.email,
    required this.profilePicture,
  });

  factory AppUser.empty() => AppUser(
        userId: '',
        registered: DateTime.now(),
        name: '',
        email: '',
        profilePicture: '',
      );
}
