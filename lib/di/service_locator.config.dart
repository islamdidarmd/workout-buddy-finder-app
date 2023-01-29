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
    as _i20;
import 'package:workout_buddy_finder/feature_auth/domain/use_case/create_new_user_use_case.dart'
    as _i21;
import 'package:workout_buddy_finder/feature_auth/domain/use_case/get_user_profile_from_id_use_case.dart'
    as _i8;
import 'package:workout_buddy_finder/feature_auth/domain/use_case/sign_in_with_google_use_case.dart'
    as _i27;
import 'package:workout_buddy_finder/feature_auth/domain/use_case/sign_out_use_case.dart'
    as _i12;
import 'package:workout_buddy_finder/feature_auth/domain/use_case/update_last_seen_use_case.dart'
    as _i15;
import 'package:workout_buddy_finder/feature_auth/feature_auth.dart' as _i24;
import 'package:workout_buddy_finder/feature_auth/ui/bloc/auth_cubit.dart'
    as _i29;
import 'package:workout_buddy_finder/feature_location/domain/usecase/get_address_from_lat_long_use_case.dart'
    as _i6;
import 'package:workout_buddy_finder/feature_location/ui/bloc/location_retriever_bloc.dart'
    as _i9;
import 'package:workout_buddy_finder/feature_messaging/domain/use_case/get_chat_room_participants_use_case.dart'
    as _i23;
import 'package:workout_buddy_finder/feature_messaging/domain/use_case/send_message_use_case.dart'
    as _i26;
import 'package:workout_buddy_finder/feature_messaging/domain/use_case/update_last_sent_message_use_case.dart'
    as _i16;
import 'package:workout_buddy_finder/feature_profile/domain/use_case/add_user_interest_use_case.dart'
    as _i4;
import 'package:workout_buddy_finder/feature_profile/domain/use_case/get_interest_list_use_case.dart'
    as _i7;
import 'package:workout_buddy_finder/feature_profile/domain/use_case/remove_user_interest_use_case.dart'
    as _i10;
import 'package:workout_buddy_finder/feature_profile/domain/use_case/update_user_profile_picture_use_case.dart'
    as _i17;
import 'package:workout_buddy_finder/feature_profile/ui/bloc/activity_tracker_cubit.dart'
    as _i3;
import 'package:workout_buddy_finder/feature_profile/ui/bloc/profile_bloc.dart'
    as _i25;
import 'package:workout_buddy_finder/feature_suggestion/data/repository/suggestions_repository_impl.dart'
    as _i14;
import 'package:workout_buddy_finder/feature_suggestion/domain/domain.dart'
    as _i13;
import 'package:workout_buddy_finder/feature_suggestion/ui/bloc/suggestions_bloc.dart'
    as _i28;
import 'package:workout_buddy_finder/feature_upload/domain/use_case/replace_image_use_case.dart'
    as _i11;
import 'package:workout_buddy_finder/feature_upload/domain/use_case/upload_image_from_bytes_use_case.dart'
    as _i18;
import 'package:workout_buddy_finder/feature_upload/domain/use_case/upload_image_from_file_use_case.dart'
    as _i19;
import 'package:workout_buddy_finder/feature_upload/feature_upload.dart'
    as _i22;

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
  gh.factory<_i6.GetAddressFromLatLongUseCase>(
      () => _i6.GetAddressFromLatLongUseCase());
  gh.factory<_i7.GetInterestListUseCase>(() => _i7.GetInterestListUseCase());
  gh.factory<_i8.GetUserProfileFromIdUseCase>(
      () => _i8.GetUserProfileFromIdUseCase());
  gh.factory<_i9.LocationRetrieverBloc>(() => _i9.LocationRetrieverBloc());
  gh.factory<_i10.RemoveUserInterestUseCase>(
      () => _i10.RemoveUserInterestUseCase());
  gh.factory<_i11.ReplaceImageUseCase>(() => _i11.ReplaceImageUseCase());
  gh.factory<_i12.SignOutUseCase>(() => _i12.SignOutUseCase());
  gh.factory<_i13.SuggestionsRepository>(
      () => _i14.SuggestionsRepositoryImpl());
  gh.factory<_i15.UpdateLastSeenUseCase>(() => _i15.UpdateLastSeenUseCase());
  gh.factory<_i16.UpdateLastSentMessageUseCase>(
      () => _i16.UpdateLastSentMessageUseCase());
  gh.factory<_i17.UpdateUserProfilePictureUseCase>(
      () => _i17.UpdateUserProfilePictureUseCase());
  gh.factory<_i18.UploadImageFromBytesUseCase>(
      () => _i18.UploadImageFromBytesUseCase());
  gh.factory<_i19.UploadImageFromFileUseCase>(
      () => _i19.UploadImageFromFileUseCase());
  gh.factory<_i20.AuthStateStreamUseCase>(() => _i20.AuthStateStreamUseCase(
      updateLastSeenUseCase: gh<_i15.UpdateLastSeenUseCase>()));
  gh.factory<_i21.CreateNewUserUseCase>(() => _i21.CreateNewUserUseCase(
      uploadImageFromBytesUseCase: gh<_i22.UploadImageFromBytesUseCase>()));
  gh.factory<_i23.GetChatRoomParticipantsUseCase>(() =>
      _i23.GetChatRoomParticipantsUseCase(
          getUserProfileFromIdUseCase: gh<_i24.GetUserProfileFromIdUseCase>()));
  gh.factory<_i25.ProfileBloc>(() => _i25.ProfileBloc(
        getInterestListUseCase: gh<_i7.GetInterestListUseCase>(),
        addUserInterestUseCase: gh<_i4.AddUserInterestUseCase>(),
        removeUserInterestUseCase: gh<_i10.RemoveUserInterestUseCase>(),
        updateUserProfilePictureUseCase:
            gh<_i17.UpdateUserProfilePictureUseCase>(),
        replaceImageUseCase: gh<_i11.ReplaceImageUseCase>(),
      ));
  gh.factory<_i26.SendMessageUseCase>(() => _i26.SendMessageUseCase(
      updateLastSentMessageUseCase: gh<_i16.UpdateLastSentMessageUseCase>()));
  gh.factory<_i27.SignInWithGoogleUseCase>(() => _i27.SignInWithGoogleUseCase(
        createNewUserUseCase: gh<_i21.CreateNewUserUseCase>(),
        getUserProfileFromIdUseCase: gh<_i8.GetUserProfileFromIdUseCase>(),
      ));
  gh.factory<_i28.SuggestionsBloc>(
      () => _i28.SuggestionsBloc(gh<_i13.SuggestionsRepository>()));
  gh.factory<_i29.AuthCubit>(() => _i29.AuthCubit(
        signInWithGoogleUseCase: gh<_i24.SignInWithGoogleUseCase>(),
        signOutUseCase: gh<_i24.SignOutUseCase>(),
      ));
  return getIt;
}
