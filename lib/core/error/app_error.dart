class AppError {
  final String message;

  const AppError({
    required this.message,
  });
}

class UserNotLoggedInError extends AppError {
  const UserNotLoggedInError() : super(message: "User not logged in Error");
}

class DataNotFoundError extends AppError {
  const DataNotFoundError() : super(message: "Requested Data not found");
}

class InvalidDataError extends AppError {
  const InvalidDataError() : super(message: "Invalid Data Error");
}

class UnknownError extends AppError {
  const UnknownError() : super(message: "Unknown Error");
}
