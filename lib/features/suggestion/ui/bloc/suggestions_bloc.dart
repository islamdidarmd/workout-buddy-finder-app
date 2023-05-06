import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/error/app_error.dart';
import '../../../../core/model/models.dart';
import '../../domain/entity/entities.dart';
import '../../domain/use_case/check_if_has_match_use_case.dart';
import '../../domain/use_case/dislike_user_use_case.dart';
import '../../domain/use_case/get_suggestions_use_case.dart';
import '../../domain/use_case/like_user_use_case.dart';

part 'suggestions_bloc.freezed.dart';

part 'suggestions_event.dart';

part 'suggestions_state.dart';

@injectable
class SuggestionsBloc extends Bloc<SuggestionsEvent, SuggestionsState> {
  final GetSuggestionsUseCase getSuggestionsUseCase;
  final LikeUserUseCase likeUserUseCase;
  final DislikeUserUseCase dislikeUserUseCase;
  final CheckIfHasMatchUseCase checkIfHasMatchUseCase;

  SuggestionsBloc({
    required this.getSuggestionsUseCase,
    required this.likeUserUseCase,
    required this.dislikeUserUseCase,
    required this.checkIfHasMatchUseCase,
  }) : super(SuggestionsState.initial()) {
    on<SuggestionsEvent>((event, emit) async {
      final result = await event.when(
        loadSuggestions: (appUser) => _loadSuggestions(appUser, emit),
        likeUser: (appUser, userId) => _onLikeUser(appUser, userId, emit),
        dislikeUser: (appUser, userId) => _onDislikeUser(appUser, userId, emit),
        checkIfHasMatch: (appUser, userId) =>
            _onCheckMatch(appUser, userId, emit),
      );
    });
  }

  Future<void> _loadSuggestions(AppUser appUser, Emitter emit) async {
    emit(SuggestionsState.loading());
    final data = await getSuggestionsUseCase(appUser);
    data.fold(
      (suggestions) => emit(SuggestionsState.suggestionsFetched(suggestions)),
      (error) => emit(SuggestionsState.error(error)),
    );
  }

  Future<void> _onLikeUser(AppUser appUser, String userId, Emitter emit) async {
    final data = await likeUserUseCase(appUser: appUser, likedUserId: userId);
  }

  Future<void> _onDislikeUser(
    AppUser appUser,
    String userId,
    Emitter emit,
  ) async {
    final data =
        await dislikeUserUseCase(appUser: appUser, dislikedUserId: userId);
  }

  Future<void> _onCheckMatch(
    AppUser appUser,
    String userId,
    Emitter emit,
  ) async {
    final hasMatch = await checkIfHasMatchUseCase(
      userId1: appUser.userId,
      userId2: userId,
    );
    if (hasMatch) {
      emit(SuggestionsState.matchFound(userId));
    }
  }
}
