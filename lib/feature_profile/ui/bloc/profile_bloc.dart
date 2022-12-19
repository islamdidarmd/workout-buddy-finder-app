import 'dart:async';

import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../core/core.dart';
import '../../../feature_auth/domain/domain.dart';
import '../../data/model/model.dart';
import '../../data/repository/profile_repository.dart';
import '../view_model/view_model.dart';

part 'profile_bloc.freezed.dart';

part 'profile_event.dart';

part 'profile_state.dart';

@singleton
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final ProfileRepository profileRepository;
  final AuthRepository authRepository;

  ProfileBloc({
    required this.profileRepository,
    required this.authRepository,
  }) : super(ProfileState.initial()) {
    on<ProfileEvent>((event, emit) async {
      final result = await event.when(
        getUserProfile: () async => await _subscribeToProfileUpdate(emit),
        loadInterests: (AppUser appUser) async {
          emit(ProfileState.loading());
          final data = await profileRepository.getInterestList();
          final userInterestList = appUser.interestList;

          data.fold(
            (interestList) {
              emit(
                ProfileState.interestsLoaded(interestList
                    .map((e) => InterestViewModel.fromInterest(e)
                        .copyWith(isSelected: userInterestList.contains((e))))
                    .toList()),
              );
            },
            (error) => emit(ProfileState.error(error)),
          );
        },
        addInterest: (appUser, interest) {
          final data =
              profileRepository.addInterestList(appUser, interest.docId);
        },
        removeInterest: (appUser, interest) {
          final data =
              profileRepository.removeInterestList(appUser, interest.docId);
        },
      );
    });
  }

  Future<void> _subscribeToProfileUpdate(Emitter emit) {
    return emit.forEach(
      authRepository.getAppUserStream(),
      onData: (appUser) => ProfileState.userProfileUpdated(appUser),
    );
  }
}
