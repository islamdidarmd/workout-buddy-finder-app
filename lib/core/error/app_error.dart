class AppError {
  final String message;

  const AppError({
    required this.message,
  });
}

class UserNotLoggedInError extends AppError {
  const UserNotLoggedInError() : super(message: "User not logged in Error");
}

class UnknownError extends AppError {
  const UnknownError() : super(message: "Unknown Error");
}
