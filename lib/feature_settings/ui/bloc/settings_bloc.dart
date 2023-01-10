import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../domain/domain.dart';

part 'settings_event.dart';

part 'settings_state.dart';

part 'settings_bloc.freezed.dart';

@injectable
class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  final SettingsRepository settingsRepository;

  SettingsBloc(this.settingsRepository) : super(const SettingsState.initial()) {
    on<SettingsEvent>((event, emit) async {
      final result = await event.when(
        clearLikes: () async {
          await settingsRepository.clearLikes();
        },
        clearDisLikes: () async {
          await settingsRepository.clearDislikes();
        },
        clearMessages: () async {
          await settingsRepository.clearMessages();
        },
      );
    });
  }
}
