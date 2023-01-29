// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:workout_buddy_finder/feature_auth/domain/use_case/app_user_stream_use_case.dart'
    as _i5;
import 'package:workout_buddy_finder/feature_auth/domain/use_case/auth_state_stream_use_case.dart'
    as _i25;
import 'package:workout_buddy_finder/feature_auth/domain/use_case/create_new_user_use_case.dart'
    as _i27;
import 'package:workout_buddy_finder/feature_auth/domain/use_case/get_user_profile_from_id_use_case.dart'
    as _i13;
import 'package:workout_buddy_finder/feature_auth/domain/use_case/sign_in_with_google_use_case.dart'
    as _i33;
import 'package:workout_buddy_finder/feature_auth/domain/use_case/sign_out_use_case.dart'
    as _i19;
import 'package:workout_buddy_finder/feature_auth/domain/use_case/update_last_seen_use_case.dart'
    as _i20;
import 'package:workout_buddy_finder/feature_auth/feature_auth.dart' as _i30;
import 'package:workout_buddy_finder/feature_auth/ui/bloc/auth_cubit.dart'
    as _i36;
import 'package:workout_buddy_finder/feature_location/domain/usecase/get_address_from_lat_long_use_case.dart'
    as _i10;
import 'package:workout_buddy_finder/feature_location/ui/bloc/location_retriever_bloc.dart'
    as _i16;
import 'package:workout_buddy_finder/feature_messaging/domain/use_case/create_chat_room_use_case.dart'
    as _i8;
import 'package:workout_buddy_finder/feature_messaging/domain/use_case/get_chat_room_participants_use_case.dart'
    as _i29;
import 'package:workout_buddy_finder/feature_messaging/domain/use_case/send_message_use_case.dart'
    as _i32;
import 'package:workout_buddy_finder/feature_messaging/domain/use_case/update_last_sent_message_use_case.dart'
    as _i21;
import 'package:workout_buddy_finder/feature_messaging/feature_messaging.dart'
    as _i15;
import 'package:workout_buddy_finder/feature_profile/domain/use_case/add_user_interest_use_case.dart'
    as _i4;
import 'package:workout_buddy_finder/feature_profile/domain/use_case/get_interest_list_use_case.dart'
    as _i11;
import 'package:workout_buddy_finder/feature_profile/domain/use_case/remove_user_interest_use_case.dart'
    as _i17;
import 'package:workout_buddy_finder/feature_profile/domain/use_case/update_user_profile_picture_use_case.dart'
    as _i22;
import 'package:workout_buddy_finder/feature_profile/ui/bloc/activity_tracker_cubit.dart'
    as _i3;
import 'package:workout_buddy_finder/feature_profile/ui/bloc/profile_bloc.dart'
    as _i31;
import 'package:workout_buddy_finder/feature_suggestion/domain/use_case/check_if_disliked_by_use_case.dart'
    as _i6;
import 'package:workout_buddy_finder/feature_suggestion/domain/use_case/check_if_has_match_use_case.dart'
    as _i26;
import 'package:workout_buddy_finder/feature_suggestion/domain/use_case/check_if_liked_by_use_case.dart'
    as _i7;
import 'package:workout_buddy_finder/feature_suggestion/domain/use_case/dislike_user_use_case.dart'
    as _i9;
import 'package:workout_buddy_finder/feature_suggestion/domain/use_case/get_suggestions_use_case.dart'
    as _i12;
import 'package:workout_buddy_finder/feature_suggestion/domain/use_case/like_user_use_case.dart'
    as _i14;
import 'package:workout_buddy_finder/feature_suggestion/feature_suggestion.dart'
    as _i35;
import 'package:workout_buddy_finder/feature_suggestion/ui/bloc/suggestions_bloc.dart'
    as _i34;
import 'package:workout_buddy_finder/feature_upload/domain/use_case/replace_image_use_case.dart'
    as _i18;
import 'package:workout_buddy_finder/feature_upload/domain/use_case/upload_image_from_bytes_use_case.dart'
    as _i23;
import 'package:workout_buddy_finder/feature_upload/domain/use_case/upload_image_from_file_use_case.dart'
    as _i24;
import 'package:workout_buddy_finder/feature_upload/feature_upload.dart'
    as _i28;

/// ignore_for_file: unnecessary_lambdas
/// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of main-scope dependencies inside of [GetIt]
_i1.GetIt $InitGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  gh.factory<_i3.ActivityTrackerCubit>(() => _i3.ActivityTrackerCubit());
  gh.factory<_i4.AddUserInterestUseCase>(() => _i4.AddUserInterestUseCase());
  gh.factory<_i5.AppUserStreamUseCase>(() => _i5.AppUserStreamUseCase());
  gh.factory<_i6.CheckIfDisLikedByUseCase>(
      () => _i6.CheckIfDisLikedByUseCase());
  gh.factory<_i7.CheckIfLikedByUseCase>(() => _i7.CheckIfLikedByUseCase());
  gh.factory<_i8.CreateChatRoomUseCase>(() => _i8.CreateChatRoomUseCase());
  gh.factory<_i9.DislikeUserUseCase>(() => _i9.DislikeUserUseCase());
  gh.factory<_i10.GetAddressFromLatLongUseCase>(
      () => _i10.GetAddressFromLatLongUseCase());
  gh.factory<_i11.GetInterestListUseCase>(() => _i11.GetInterestListUseCase());
  gh.factory<_i12.GetSuggestionsUseCase>(() => _i12.GetSuggestionsUseCase(
        checkIfLikedByUseCase: gh<_i7.CheckIfLikedByUseCase>(),
        checkIfDisLikedByUseCase: gh<_i6.CheckIfDisLikedByUseCase>(),
      ));
  gh.factory<_i13.GetUserProfileFromIdUseCase>(
      () => _i13.GetUserProfileFromIdUseCase());
  gh.factory<_i14.LikeUserUseCase>(() => _i14.LikeUserUseCase(
        checkIfLikedByUseCase: gh<_i7.CheckIfLikedByUseCase>(),
        createChatRoomUseCase: gh<_i15.CreateChatRoomUseCase>(),
      ));
  gh.factory<_i16.LocationRetrieverBloc>(() => _i16.LocationRetrieverBloc());
  gh.factory<_i17.RemoveUserInterestUseCase>(
      () => _i17.RemoveUserInterestUseCase());
  gh.factory<_i18.ReplaceImageUseCase>(() => _i18.ReplaceImageUseCase());
  gh.factory<_i19.SignOutUseCase>(() => _i19.SignOutUseCase());
  gh.factory<_i20.UpdateLastSeenUseCase>(() => _i20.UpdateLastSeenUseCase());
  gh.factory<_i21.UpdateLastSentMessageUseCase>(
      () => _i21.UpdateLastSentMessageUseCase());
  gh.factory<_i22.UpdateUserProfilePictureUseCase>(
      () => _i22.UpdateUserProfilePictureUseCase());
  gh.factory<_i23.UploadImageFromBytesUseCase>(
      () => _i23.UploadImageFromBytesUseCase());
  gh.factory<_i24.UploadImageFromFileUseCase>(
      () => _i24.UploadImageFromFileUseCase());
  gh.factory<_i25.AuthStateStreamUseCase>(() => _i25.AuthStateStreamUseCase(
      updateLastSeenUseCase: gh<_i20.UpdateLastSeenUseCase>()));
  gh.factory<_i26.CheckIfHasMatchUseCase>(() => _i26.CheckIfHasMatchUseCase(
      checkIfLikedByUseCase: gh<_i7.CheckIfLikedByUseCase>()));
  gh.factory<_i27.CreateNewUserUseCase>(() => _i27.CreateNewUserUseCase(
      uploadImageFromBytesUseCase: gh<_i28.UploadImageFromBytesUseCase>()));
  gh.factory<_i29.GetChatRoomParticipantsUseCase>(() =>
      _i29.GetChatRoomParticipantsUseCase(
          getUserProfileFromIdUseCase: gh<_i30.GetUserProfileFromIdUseCase>()));
  gh.factory<_i31.ProfileBloc>(() => _i31.ProfileBloc(
        getInterestListUseCase: gh<_i11.GetInterestListUseCase>(),
        addUserInterestUseCase: gh<_i4.AddUserInterestUseCase>(),
        removeUserInterestUseCase: gh<_i17.RemoveUserInterestUseCase>(),
        updateUserProfilePictureUseCase:
            gh<_i22.UpdateUserProfilePictureUseCase>(),
        replaceImageUseCase: gh<_i18.ReplaceImageUseCase>(),
      ));
  gh.factory<_i32.SendMessageUseCase>(() => _i32.SendMessageUseCase(
      updateLastSentMessageUseCase: gh<_i21.UpdateLastSentMessageUseCase>()));
  gh.factory<_i33.SignInWithGoogleUseCase>(() => _i33.SignInWithGoogleUseCase(
        createNewUserUseCase: gh<_i27.CreateNewUserUseCase>(),
        getUserProfileFromIdUseCase: gh<_i13.GetUserProfileFromIdUseCase>(),
      ));
  gh.factory<_i34.SuggestionsBloc>(() => _i34.SuggestionsBloc(
        getSuggestionsUseCase: gh<_i35.GetSuggestionsUseCase>(),
        likeUserUseCase: gh<_i35.LikeUserUseCase>(),
        dislikeUserUseCase: gh<_i35.DislikeUserUseCase>(),
        checkIfHasMatchUseCase: gh<_i35.CheckIfHasMatchUseCase>(),
      ));
  gh.factory<_i36.AuthCubit>(() => _i36.AuthCubit(
        signInWithGoogleUseCase: gh<_i30.SignInWithGoogleUseCase>(),
        signOutUseCase: gh<_i30.SignOutUseCase>(),
      ));
  return getIt;
}
