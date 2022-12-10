class AppUser {
  final String userId;
  final DateTime registered;
  String? name;
  String? email;
  String? profilePicture;

  AppUser({
    required this.userId,
    required this.registered,
    this.name,
    this.email,
    this.profilePicture,
  });
}
