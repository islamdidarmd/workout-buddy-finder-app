import 'dart:async';

import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../core/core.dart';
import '../../data/repository/profile_repository.dart';
import '../view_model/view_model.dart';

part 'profile_bloc.freezed.dart';

part 'profile_event.dart';

part 'profile_state.dart';

@injectable
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final ProfileRepository profileRepository;

  ProfileBloc({
    required this.profileRepository,
  }) : super(ProfileState.initial()) {
    on<ProfileEvent>((event, emit) async {
      final result = await event.when(
        loadInterests: (appUser) async => await _onLoadInterest(emit, appUser),
        addInterest: (appUser, interest) async =>
            await _onAddInterest(appUser, interest),
        removeInterest: (appUser, interest) async =>
            await _onRemoveInterest(appUser, interest),
      );
    });
  }

  Future<void> _onLoadInterest(Emitter emit, AppUser appUser) async {
    emit(ProfileState.loading());
    final data = await profileRepository.getInterestList();

    data.fold(
      (allInterest) {
        final interestViewModels = _mapInterestModel(
          allInterest,
          appUser,
        );
        emit(ProfileState.interestsLoaded(interestViewModels));
      },
      (error) => emit(ProfileState.error(error)),
    );
  }

  Future<void> _onAddInterest(
    AppUser appUser,
    InterestViewModel interest,
  ) async {
    final data =
        await profileRepository.addInterestList(appUser, interest.docId);
  }

  Future<void> _onRemoveInterest(
    AppUser appUser,
    InterestViewModel interest,
  ) async {
    final data =
        await profileRepository.removeInterestList(appUser, interest.docId);
  }

  List<InterestViewModel> _mapInterestModel(
    List<Interest> allInterest,
    AppUser appUser,
  ) {
    final userInterestList = appUser.interestList;

    return allInterest.map((interest) {
      var viewModel = InterestViewModel.fromInterest(interest);
      if (userInterestList.firstWhereOrNull(
            (userInterest) => userInterest.id == viewModel.docId,
          ) !=
          null) {
        viewModel = viewModel.copyWith(isSelected: true);
      }

      return viewModel;
    }).toList();
  }
}
