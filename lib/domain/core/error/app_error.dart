class AppError {
  final ErrorType type;
  final String message;

  const AppError({
    required this.type,
    required this.message,
  });
}

enum ErrorType {
  NotFound,
  NetworkError,
  ParseError,
  Unknown,
}
