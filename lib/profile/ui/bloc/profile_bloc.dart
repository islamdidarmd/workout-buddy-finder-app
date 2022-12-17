import 'dart:async';

import 'package:flutter/foundation.dart';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:workout_buddy_finder/profile/data/data.dart';

import '../../../auth/auth.dart';
import '../../../core/core.dart';
import '../view_model/view_model.dart';

part 'profile_bloc.freezed.dart';

part 'profile_event.dart';

part 'profile_state.dart';

@injectable
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final ProfileRepository profileRepository;
  final AuthRepository authRepository;

  StreamSubscription? _appUserStreamSubscription;

  ProfileBloc({
    required this.profileRepository,
    required this.authRepository,
  }) : super(ProfileState.initial()) {
    on<ProfileEvent>((event, emit) async {
      final result = await event.when(
        getUserProfile: () async => await _subscribeToProfileUpdate(emit),
        loadInterests: () async {
          emit(ProfileState.loading());
          final data = await profileRepository.getInterestList();
          data.fold(
            (interestList) => emit(
              ProfileState.interestsLoaded(interestList
                  .map((e) => InterestViewModel.fromInterest(e))
                  .toList()),
            ),
            (error) => emit(ProfileState.error(error)),
          );
        },
      );
    });
  }

  @override
  Future<void> close() async {
    _appUserStreamSubscription?.cancel();
    super.close();
  }

  Future<void> _subscribeToProfileUpdate(Emitter emit) {
    return emit.forEach(
      authRepository.getAppUserStream(),
      onData: (appUser) => ProfileState.userProfileUpdated(appUser),
    );
  }
}
