// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:workout_buddy_finder/feature_auth/data/repository/auth_repository_impl.dart'
    as _i21;
import 'package:workout_buddy_finder/feature_auth/domain/repository/auth_repository.dart'
    as _i20;
import 'package:workout_buddy_finder/feature_auth/domain/use_case/create_new_user_use_case.dart'
    as _i22;
import 'package:workout_buddy_finder/feature_auth/ui/bloc/auth_bloc.dart'
    as _i29;
import 'package:workout_buddy_finder/feature_location/domain/usecase/get_address_from_lat_long_use_case.dart'
    as _i3;
import 'package:workout_buddy_finder/feature_location/ui/bloc/location_retriever_bloc.dart'
    as _i4;
import 'package:workout_buddy_finder/feature_messaging/data/repository/repository/messaging_repository_impl.dart'
    as _i25;
import 'package:workout_buddy_finder/feature_messaging/domain/domain.dart'
    as _i24;
import 'package:workout_buddy_finder/feature_profile/data/repository/profile_repository.dart'
    as _i5;
import 'package:workout_buddy_finder/feature_profile/data/repository/profile_repository_impl.dart'
    as _i6;
import 'package:workout_buddy_finder/feature_profile/ui/bloc/profile_bloc.dart'
    as _i26;
import 'package:workout_buddy_finder/feature_push/data/repository/push_repository_impl.dart'
    as _i8;
import 'package:workout_buddy_finder/feature_push/domain/push_repository.dart'
    as _i7;
import 'package:workout_buddy_finder/feature_settings/data/repository/settings_repository_impl.dart'
    as _i11;
import 'package:workout_buddy_finder/feature_settings/domain/domain.dart'
    as _i10;
import 'package:workout_buddy_finder/feature_settings/ui/bloc/settings_bloc.dart'
    as _i27;
import 'package:workout_buddy_finder/feature_suggestion/data/repository/suggestions_repository_impl.dart'
    as _i13;
import 'package:workout_buddy_finder/feature_suggestion/domain/domain.dart'
    as _i12;
import 'package:workout_buddy_finder/feature_suggestion/ui/bloc/suggestions_bloc.dart'
    as _i28;
import 'package:workout_buddy_finder/feature_upload/data/repository/uploader_repository_impl.dart'
    as _i17;
import 'package:workout_buddy_finder/feature_upload/domain/domain.dart' as _i16;
import 'package:workout_buddy_finder/feature_upload/domain/use_case/replace_image_use_case.dart'
    as _i9;
import 'package:workout_buddy_finder/feature_upload/domain/use_case/upload_image_from_bytes_use_case.dart'
    as _i14;
import 'package:workout_buddy_finder/feature_upload/domain/use_case/upload_image_from_file_use_case.dart'
    as _i15;
import 'package:workout_buddy_finder/feature_upload/feature_upload.dart'
    as _i23;
import 'package:workout_buddy_finder/feature_visit_user/data/repository/visit_user_repository_impl.dart'
    as _i19;
import 'package:workout_buddy_finder/feature_visit_user/domain/domain.dart'
    as _i18;

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
  gh.factory<_i3.GetAddressFromLatLongUseCase>(
      () => _i3.GetAddressFromLatLongUseCase());
  gh.factory<_i4.LocationRetrieverBloc>(() => _i4.LocationRetrieverBloc());
  gh.factory<_i5.ProfileRepository>(() => _i6.ProfileRepositoryImpl());
  gh.factory<_i7.PushRepository>(() => _i8.PushRepositoryImpl());
  gh.factory<_i9.ReplaceImageUseCase>(() => _i9.ReplaceImageUseCase());
  gh.factory<_i10.SettingsRepository>(() => _i11.SettingsRepositoryImpl());
  gh.factory<_i12.SuggestionsRepository>(
      () => _i13.SuggestionsRepositoryImpl());
  gh.factory<_i14.UploadImageFromBytesUseCase>(
      () => _i14.UploadImageFromBytesUseCase());
  gh.factory<_i15.UploadImageFromFileUseCase>(
      () => _i15.UploadImageFromFileUseCase());
  gh.factory<_i16.UploaderRepository>(() => _i17.UploaderRepositoryImpl());
  gh.factory<_i18.VisitUserRepository>(() => _i19.VisitUserRepositoryImpl());
  gh.factory<_i20.AuthRepository>(() => _i21.AuthRepositoryImpl(
      uploaderRepository: gh<_i16.UploaderRepository>()));
  gh.factory<_i22.CreateNewUserUseCase>(() => _i22.CreateNewUserUseCase(
      uploadImageFromBytesUseCase: gh<_i23.UploadImageFromBytesUseCase>()));
  gh.factory<_i24.MessagingRepository>(
      () => _i25.MessagingRepositoryImpl(gh<_i7.PushRepository>()));
  gh.factory<_i26.ProfileBloc>(() => _i26.ProfileBloc(
        profileRepository: gh<_i5.ProfileRepository>(),
        uploaderRepository: gh<_i16.UploaderRepository>(),
      ));
  gh.factory<_i27.SettingsBloc>(
      () => _i27.SettingsBloc(gh<_i10.SettingsRepository>()));
  gh.factory<_i28.SuggestionsBloc>(
      () => _i28.SuggestionsBloc(gh<_i12.SuggestionsRepository>()));
  gh.factory<_i29.AuthBloc>(() => _i29.AuthBloc(
        authRepository: gh<_i20.AuthRepository>(),
        pushRepository: gh<_i7.PushRepository>(),
      ));
  return getIt;
}
