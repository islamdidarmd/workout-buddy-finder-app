import 'package:equatable/equatable.dart';

class AppError extends Equatable {
  final String message;

  @override
  List<Object?> get props => [message];

  const AppError({
    required this.message,
  });
}

class UserNotLoggedInError extends AppError {
  const UserNotLoggedInError() : super(message: "User not logged in Error");
}

class LogoutFailedError extends AppError {
  const LogoutFailedError() : super(message: "Failed to logout");
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

class FileUploadError extends AppError {
  const FileUploadError() : super(message: "File Uploading Error");
}
