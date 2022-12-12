class AppError {
  final String message;

  const AppError({
    required this.message,
  });
}

class UserNotLoggedInError extends AppError {
  const UserNotLoggedInError() : super(message: "User not logged in Error");
}

class DataNotLoggedInError extends AppError {
  const DataNotLoggedInError() : super(message: "Requested Data not found");
}

class UnknownError extends AppError {
  const UnknownError() : super(message: "Unknown Error");
}
