// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:workout_buddy_finder/feature_auth/domain/use_case/app_user_stream_use_case.dart'
    as _i3;
import 'package:workout_buddy_finder/feature_auth/domain/use_case/auth_state_stream_use_case.dart'
    as _i23;
import 'package:workout_buddy_finder/feature_auth/domain/use_case/create_new_user_use_case.dart'
    as _i24;
import 'package:workout_buddy_finder/feature_auth/domain/use_case/sign_in_with_google_use_case.dart'
    as _i30;
import 'package:workout_buddy_finder/feature_auth/domain/use_case/sign_out_use_case.dart'
    as _i13;
import 'package:workout_buddy_finder/feature_auth/domain/use_case/update_last_seen_use_case.dart'
    as _i16;
import 'package:workout_buddy_finder/feature_auth/feature_auth.dart' as _i33;
import 'package:workout_buddy_finder/feature_auth/ui/bloc/auth_cubit.dart'
    as _i32;
import 'package:workout_buddy_finder/feature_location/domain/usecase/get_address_from_lat_long_use_case.dart'
    as _i4;
import 'package:workout_buddy_finder/feature_location/ui/bloc/location_retriever_bloc.dart'
    as _i5;
import 'package:workout_buddy_finder/feature_messaging/data/repository/repository/messaging_repository_impl.dart'
    as _i27;
import 'package:workout_buddy_finder/feature_messaging/domain/domain.dart'
    as _i26;
import 'package:workout_buddy_finder/feature_profile/data/repository/profile_repository.dart'
    as _i6;
import 'package:workout_buddy_finder/feature_profile/data/repository/profile_repository_impl.dart'
    as _i7;
import 'package:workout_buddy_finder/feature_profile/ui/bloc/profile_bloc.dart'
    as _i28;
import 'package:workout_buddy_finder/feature_push/data/repository/push_repository_impl.dart'
    as _i9;
import 'package:workout_buddy_finder/feature_push/domain/push_repository.dart'
    as _i8;
import 'package:workout_buddy_finder/feature_settings/data/repository/settings_repository_impl.dart'
    as _i12;
import 'package:workout_buddy_finder/feature_settings/domain/domain.dart'
    as _i11;
import 'package:workout_buddy_finder/feature_settings/ui/bloc/settings_bloc.dart'
    as _i29;
import 'package:workout_buddy_finder/feature_suggestion/data/repository/suggestions_repository_impl.dart'
    as _i15;
import 'package:workout_buddy_finder/feature_suggestion/domain/domain.dart'
    as _i14;
import 'package:workout_buddy_finder/feature_suggestion/ui/bloc/suggestions_bloc.dart'
    as _i31;
import 'package:workout_buddy_finder/feature_upload/data/repository/uploader_repository_impl.dart'
    as _i20;
import 'package:workout_buddy_finder/feature_upload/domain/domain.dart' as _i19;
import 'package:workout_buddy_finder/feature_upload/domain/use_case/replace_image_use_case.dart'
    as _i10;
import 'package:workout_buddy_finder/feature_upload/domain/use_case/upload_image_from_bytes_use_case.dart'
    as _i17;
import 'package:workout_buddy_finder/feature_upload/domain/use_case/upload_image_from_file_use_case.dart'
    as _i18;
import 'package:workout_buddy_finder/feature_upload/feature_upload.dart'
    as _i25;
import 'package:workout_buddy_finder/feature_visit_user/data/repository/visit_user_repository_impl.dart'
    as _i22;
import 'package:workout_buddy_finder/feature_visit_user/domain/domain.dart'
    as _i21;

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
  gh.factory<_i3.AppUserStreamUseCase>(() => _i3.AppUserStreamUseCase());
  gh.factory<_i4.GetAddressFromLatLongUseCase>(
      () => _i4.GetAddressFromLatLongUseCase());
  gh.factory<_i5.LocationRetrieverBloc>(() => _i5.LocationRetrieverBloc());
  gh.factory<_i6.ProfileRepository>(() => _i7.ProfileRepositoryImpl());
  gh.factory<_i8.PushRepository>(() => _i9.PushRepositoryImpl());
  gh.factory<_i10.ReplaceImageUseCase>(() => _i10.ReplaceImageUseCase());
  gh.factory<_i11.SettingsRepository>(() => _i12.SettingsRepositoryImpl());
  gh.factory<_i13.SignOutUseCase>(() => _i13.SignOutUseCase());
  gh.factory<_i14.SuggestionsRepository>(
      () => _i15.SuggestionsRepositoryImpl());
  gh.factory<_i16.UpdateLastSeenUseCase>(() => _i16.UpdateLastSeenUseCase());
  gh.factory<_i17.UploadImageFromBytesUseCase>(
      () => _i17.UploadImageFromBytesUseCase());
  gh.factory<_i18.UploadImageFromFileUseCase>(
      () => _i18.UploadImageFromFileUseCase());
  gh.factory<_i19.UploaderRepository>(() => _i20.UploaderRepositoryImpl());
  gh.factory<_i21.VisitUserRepository>(() => _i22.VisitUserRepositoryImpl());
  gh.factory<_i23.AuthStateStreamUseCase>(() => _i23.AuthStateStreamUseCase(
      updateLastSeenUseCase: gh<_i16.UpdateLastSeenUseCase>()));
  gh.factory<_i24.CreateNewUserUseCase>(() => _i24.CreateNewUserUseCase(
      uploadImageFromBytesUseCase: gh<_i25.UploadImageFromBytesUseCase>()));
  gh.factory<_i26.MessagingRepository>(
      () => _i27.MessagingRepositoryImpl(gh<_i8.PushRepository>()));
  gh.factory<_i28.ProfileBloc>(() => _i28.ProfileBloc(
        profileRepository: gh<_i6.ProfileRepository>(),
        uploaderRepository: gh<_i19.UploaderRepository>(),
      ));
  gh.factory<_i29.SettingsBloc>(
      () => _i29.SettingsBloc(gh<_i11.SettingsRepository>()));
  gh.factory<_i30.SignInWithGoogleUseCase>(() => _i30.SignInWithGoogleUseCase(
      createNewUserUseCase: gh<_i24.CreateNewUserUseCase>()));
  gh.factory<_i31.SuggestionsBloc>(
      () => _i31.SuggestionsBloc(gh<_i14.SuggestionsRepository>()));
  gh.factory<_i32.AuthCubit>(() => _i32.AuthCubit(
        signInWithGoogleUseCase: gh<_i33.SignInWithGoogleUseCase>(),
        signOutUseCase: gh<_i33.SignOutUseCase>(),
      ));
  return getIt;
}
