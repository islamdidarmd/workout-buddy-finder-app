part of 'settings_bloc.dart';

@freezed
class SettingsEvent with _$SettingsEvent {
  const factory SettingsEvent.clearLikes() = _ClearLikeEvent;
  const factory SettingsEvent.clearDisLikes() = _ClearDisLikeEvent;
  const factory SettingsEvent.clearMessages() = _ClearMessages;
}
