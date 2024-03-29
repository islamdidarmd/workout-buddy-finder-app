import 'dart:async';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/error/app_error.dart';
import '../../../../core/model/models.dart';
import '../../../upload/domain/use_case/replace_image_use_case.dart';
import '../../domain/use_case/add_user_interest_use_case.dart';

import '../../domain/use_case/get_interest_list_use_case.dart';
import '../../domain/use_case/remove_user_interest_use_case.dart';
import '../../domain/use_case/update_user_profile_picture_use_case.dart';
import '../view_model/view_model.dart';

part 'profile_bloc.freezed.dart';

part 'profile_event.dart';

part 'profile_state.dart';

@injectable
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final GetInterestListUseCase getInterestListUseCase;
  final AddUserInterestUseCase addUserInterestUseCase;
  final RemoveUserInterestUseCase removeUserInterestUseCase;
  final UpdateUserProfilePictureUseCase updateUserProfilePictureUseCase;
  final ReplaceImageUseCase replaceImageUseCase;

  ProfileBloc({
    required this.getInterestListUseCase,
    required this.addUserInterestUseCase,
    required this.removeUserInterestUseCase,
    required this.updateUserProfilePictureUseCase,
    required this.replaceImageUseCase,
  }) : super(const ProfileState.initial()) {
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
    emit(const ProfileState.loading());
    final data = await getInterestListUseCase();

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
    final data = await addUserInterestUseCase(appUser, interest.docId);
  }

  Future<void> _onRemoveInterest(
    AppUser appUser,
    InterestViewModel interest,
  ) async {
    final data = await removeUserInterestUseCase(appUser, interest.docId);
  }

  List<InterestViewModel> _mapInterestModel(
    List<Interest> allInterest,
    AppUser appUser,
  ) {
    final userInterestList = appUser.interestList;

    return allInterest.map((interest) {
      var viewModel = InterestViewModel.fromInterest(interest);
      if (userInterestList.contains(viewModel.docId)) {
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
    emit(const ProfileState.profilePictureUploading());
    final uploadData =
        await updateUserProfilePictureUseCase.execute(appUser, image);

    return uploadData.fold(
      (result) => emit(const ProfileState.profilePictureUploadingSuccess()),
      (error) => emit(ProfileState.profilePictureUploadingError(error)),
    );
  }
}
