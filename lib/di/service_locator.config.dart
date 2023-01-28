// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:workout_buddy_finder/feature_auth/domain/use_case/app_user_stream_use_case.dart'
    as _i4;
import 'package:workout_buddy_finder/feature_auth/domain/use_case/auth_state_stream_use_case.dart'
    as _i23;
import 'package:workout_buddy_finder/feature_auth/domain/use_case/create_new_user_use_case.dart'
    as _i24;
import 'package:workout_buddy_finder/feature_auth/domain/use_case/get_user_profile_from_id_use_case.dart'
    as _i7;
import 'package:workout_buddy_finder/feature_auth/domain/use_case/sign_in_with_google_use_case.dart'
    as _i30;
import 'package:workout_buddy_finder/feature_auth/domain/use_case/sign_out_use_case.dart'
    as _i15;
import 'package:workout_buddy_finder/feature_auth/domain/use_case/update_last_seen_use_case.dart'
    as _i18;
import 'package:workout_buddy_finder/feature_auth/feature_auth.dart' as _i27;
import 'package:workout_buddy_finder/feature_auth/ui/bloc/auth_cubit.dart'
    as _i32;
import 'package:workout_buddy_finder/feature_location/domain/usecase/get_address_from_lat_long_use_case.dart'
    as _i5;
import 'package:workout_buddy_finder/feature_location/ui/bloc/location_retriever_bloc.dart'
    as _i8;
import 'package:workout_buddy_finder/feature_messaging/domain/use_case/get_chat_room_participants_use_case.dart'
    as _i26;
import 'package:workout_buddy_finder/feature_messaging/domain/use_case/update_last_sent_message_use_case.dart'
    as _i19;
import 'package:workout_buddy_finder/feature_profile/domain/use_case/add_user_interest_use_case.dart'
    as _i3;
import 'package:workout_buddy_finder/feature_profile/domain/use_case/get_interest_list_use_case.dart'
    as _i6;
import 'package:workout_buddy_finder/feature_profile/domain/use_case/remove_user_interest_use_case.dart'
    as _i11;
import 'package:workout_buddy_finder/feature_profile/domain/use_case/update_user_profile_picture_use_case.dart'
    as _i20;
import 'package:workout_buddy_finder/feature_profile/ui/bloc/profile_bloc.dart'
    as _i28;
import 'package:workout_buddy_finder/feature_push/data/repository/push_repository_impl.dart'
    as _i10;
import 'package:workout_buddy_finder/feature_push/domain/push_repository.dart'
    as _i9;
import 'package:workout_buddy_finder/feature_settings/data/repository/settings_repository_impl.dart'
    as _i14;
import 'package:workout_buddy_finder/feature_settings/domain/domain.dart'
    as _i13;
import 'package:workout_buddy_finder/feature_settings/ui/bloc/settings_bloc.dart'
    as _i29;
import 'package:workout_buddy_finder/feature_suggestion/data/repository/suggestions_repository_impl.dart'
    as _i17;
import 'package:workout_buddy_finder/feature_suggestion/domain/domain.dart'
    as _i16;
import 'package:workout_buddy_finder/feature_suggestion/ui/bloc/suggestions_bloc.dart'
    as _i31;
import 'package:workout_buddy_finder/feature_upload/domain/use_case/replace_image_use_case.dart'
    as _i12;
import 'package:workout_buddy_finder/feature_upload/domain/use_case/upload_image_from_bytes_use_case.dart'
    as _i21;
import 'package:workout_buddy_finder/feature_upload/domain/use_case/upload_image_from_file_use_case.dart'
    as _i22;
import 'package:workout_buddy_finder/feature_upload/feature_upload.dart'
    as _i25;

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
  gh.factory<_i3.AddUserInterestUseCase>(() => _i3.AddUserInterestUseCase());
  gh.factory<_i4.AppUserStreamUseCase>(() => _i4.AppUserStreamUseCase());
  gh.factory<_i5.GetAddressFromLatLongUseCase>(
      () => _i5.GetAddressFromLatLongUseCase());
  gh.factory<_i6.GetInterestListUseCase>(() => _i6.GetInterestListUseCase());
  gh.factory<_i7.GetUserProfileFromIdUseCase>(
      () => _i7.GetUserProfileFromIdUseCase());
  gh.factory<_i8.LocationRetrieverBloc>(() => _i8.LocationRetrieverBloc());
  gh.factory<_i9.PushRepository>(() => _i10.PushRepositoryImpl());
  gh.factory<_i11.RemoveUserInterestUseCase>(
      () => _i11.RemoveUserInterestUseCase());
  gh.factory<_i12.ReplaceImageUseCase>(() => _i12.ReplaceImageUseCase());
  gh.factory<_i13.SettingsRepository>(() => _i14.SettingsRepositoryImpl());
  gh.factory<_i15.SignOutUseCase>(() => _i15.SignOutUseCase());
  gh.factory<_i16.SuggestionsRepository>(
      () => _i17.SuggestionsRepositoryImpl());
  gh.factory<_i18.UpdateLastSeenUseCase>(() => _i18.UpdateLastSeenUseCase());
  gh.factory<_i19.UpdateLastSentMessageUseCase>(
      () => _i19.UpdateLastSentMessageUseCase());
  gh.factory<_i20.UpdateUserProfilePictureUseCase>(
      () => _i20.UpdateUserProfilePictureUseCase());
  gh.factory<_i21.UploadImageFromBytesUseCase>(
      () => _i21.UploadImageFromBytesUseCase());
  gh.factory<_i22.UploadImageFromFileUseCase>(
      () => _i22.UploadImageFromFileUseCase());
  gh.factory<_i23.AuthStateStreamUseCase>(() => _i23.AuthStateStreamUseCase(
      updateLastSeenUseCase: gh<_i18.UpdateLastSeenUseCase>()));
  gh.factory<_i24.CreateNewUserUseCase>(() => _i24.CreateNewUserUseCase(
      uploadImageFromBytesUseCase: gh<_i25.UploadImageFromBytesUseCase>()));
  gh.factory<_i26.GetChatRoomParticipantsUseCase>(() =>
      _i26.GetChatRoomParticipantsUseCase(
          getUserProfileFromIdUseCase: gh<_i27.GetUserProfileFromIdUseCase>()));
  gh.factory<_i28.ProfileBloc>(() => _i28.ProfileBloc(
        getInterestListUseCase: gh<_i6.GetInterestListUseCase>(),
        addUserInterestUseCase: gh<_i3.AddUserInterestUseCase>(),
        removeUserInterestUseCase: gh<_i11.RemoveUserInterestUseCase>(),
        updateUserProfilePictureUseCase:
            gh<_i20.UpdateUserProfilePictureUseCase>(),
        replaceImageUseCase: gh<_i12.ReplaceImageUseCase>(),
      ));
  gh.factory<_i29.SettingsBloc>(
      () => _i29.SettingsBloc(gh<_i13.SettingsRepository>()));
  gh.factory<_i30.SignInWithGoogleUseCase>(() => _i30.SignInWithGoogleUseCase(
        createNewUserUseCase: gh<_i24.CreateNewUserUseCase>(),
        getUserProfileFromIdUseCase: gh<_i7.GetUserProfileFromIdUseCase>(),
      ));
  gh.factory<_i31.SuggestionsBloc>(
      () => _i31.SuggestionsBloc(gh<_i16.SuggestionsRepository>()));
  gh.factory<_i32.AuthCubit>(() => _i32.AuthCubit(
        signInWithGoogleUseCase: gh<_i27.SignInWithGoogleUseCase>(),
        signOutUseCase: gh<_i27.SignOutUseCase>(),
      ));
  return getIt;
}
