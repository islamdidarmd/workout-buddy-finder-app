class AppError {
  final String message;

  const AppError({
    required this.message,
  });
}

class UnknownError extends AppError {
  const UnknownError() : super(message: "Unknown Error");
}
