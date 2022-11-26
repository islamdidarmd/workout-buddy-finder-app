class AppError {
  final String message;

  const AppError({
    required this.message,
  });

  factory AppError.unknown() => AppError(message: 'Unknown Error');
}
