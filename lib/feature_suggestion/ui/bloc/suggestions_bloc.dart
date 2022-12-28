import 'dart:async';
import 'package:flutter/foundation.dart';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:workout_buddy_finder/core/core.dart';

import '../../domain/domain.dart';

part 'suggestions_bloc.freezed.dart';

part 'suggestions_event.dart';

part 'suggestions_state.dart';

@injectable
class SuggestionsBloc extends Bloc<SuggestionsEvent, SuggestionsState> {
  final SuggestionsRepository suggestionsRepository;

  SuggestionsBloc(this.suggestionsRepository)
      : super(SuggestionsState.initial()) {
    on<SuggestionsEvent>((event, emit) async {
      final result = await event.when(
        loadSuggestions: (appUser) async =>
            await _loadSuggestions(event.appUser, emit),
      );
    });
  }

  Future<void> _loadSuggestions(AppUser appUser, Emitter emit) async {
    emit(SuggestionsState.loading());
    final data = await suggestionsRepository.getSuggestions(appUser);
    data.fold(
      (suggestions) => emit(SuggestionsState.suggestionsFetched(suggestions)),
      (error) => emit(SuggestionsState.error(error)),
    );
  }
}
