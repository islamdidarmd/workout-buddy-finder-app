class AppUser {
  final String userId;
  final DateTime registered;
  String? name;
  String? email;
  String? profilePicture;

  bool get isEmpty => userId.isEmpty;

  AppUser({
    required this.userId,
    required this.registered,
    this.name,
    this.email,
    this.profilePicture,
  });

  factory AppUser.empty() => AppUser(userId: '', registered: DateTime.now());
}
