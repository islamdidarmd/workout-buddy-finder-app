import 'dart:async';
import 'dart:io';

import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:workout_buddy_finder/core/firebase_storage_constants.dart';

import '../../../core/core.dart';
import '../../../feature_upload/domain/domain.dart';
import '../../data/repository/profile_repository.dart';
import '../view_model/view_model.dart';

part 'profile_bloc.freezed.dart';

part 'profile_event.dart';

part 'profile_state.dart';

@injectable
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final ProfileRepository profileRepository;
  final UploaderRepository uploaderRepository;

  ProfileBloc({
    required this.profileRepository,
    required this.uploaderRepository,
  }) : super(ProfileState.initial()) {
    on<ProfileEvent>((event, emit) async {
      final result = await event.when(
        loadInterests: (appUser) => _onLoadInterest(emit, appUser),
        addInterest: (appUser, interest) => _onAddInterest(appUser, interest),
        removeInterest: (appUser, interest) =>
            _onRemoveInterest(appUser, interest),
        uploadProfilePicture: (appUser, image) =>
            _onUploadProfilePicture(emit, appUser, image),
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

  Future<void> _onUploadProfilePicture(
    Emitter emit,
    AppUser appUser,
    File image,
  ) async {
    emit(ProfileState.profilePictureUploading());

    final path = '$profile_pictures';
    final fileName =
        '${appUser.userId}_${DateTime.now().millisecondsSinceEpoch}';
    final data = await uploaderRepository.uploadImage(
      path: path,
      image: image,
      fileName: fileName,
    );
    await data.fold(
      (imageUrl) async {
        final uploadData =
            await profileRepository.updateProfilePicture(appUser, imageUrl);
        uploadData.fold(
          (result) => emit(ProfileState.profilePictureUploadingSuccess()),
          (error) => emit(ProfileState.profilePictureUploadingError(error)),
        );
      },
      (error) {
        emit(ProfileState.profilePictureUploadingError(error));
      },
    );
  }
}
