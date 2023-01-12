// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:workout_buddy_finder/feature_auth/data/repository/auth_repository_impl.dart'
    as _i16;
import 'package:workout_buddy_finder/feature_auth/domain/domain.dart' as _i15;
import 'package:workout_buddy_finder/feature_auth/ui/bloc/auth_bloc.dart'
    as _i20;
import 'package:workout_buddy_finder/feature_location/domain/usecase/get_address_from_lat_long_use_case.dart'
    as _i3;
import 'package:workout_buddy_finder/feature_location/ui/bloc/location_retriever_bloc.dart'
    as _i4;
import 'package:workout_buddy_finder/feature_messaging/data/repository/repository/messaging_repository_impl.dart'
    as _i6;
import 'package:workout_buddy_finder/feature_messaging/domain/domain.dart'
    as _i5;
import 'package:workout_buddy_finder/feature_profile/data/repository/profile_repository.dart'
    as _i7;
import 'package:workout_buddy_finder/feature_profile/data/repository/profile_repository_impl.dart'
    as _i8;
import 'package:workout_buddy_finder/feature_profile/ui/bloc/profile_bloc.dart'
    as _i17;
import 'package:workout_buddy_finder/feature_settings/data/repository/settings_repository_impl.dart'
    as _i10;
import 'package:workout_buddy_finder/feature_settings/domain/domain.dart'
    as _i9;
import 'package:workout_buddy_finder/feature_settings/ui/bloc/settings_bloc.dart'
    as _i18;
import 'package:workout_buddy_finder/feature_suggestion/data/repository/suggestions_repository_impl.dart'
    as _i12;
import 'package:workout_buddy_finder/feature_suggestion/domain/domain.dart'
    as _i11;
import 'package:workout_buddy_finder/feature_suggestion/ui/bloc/suggestions_bloc.dart'
    as _i19;
import 'package:workout_buddy_finder/feature_upload/data/repository/uploader_repository_impl.dart'
    as _i14;
import 'package:workout_buddy_finder/feature_upload/domain/domain.dart' as _i13;

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
  gh.factory<_i5.MessagingRepository>(() => _i6.MessagingRepositoryImpl());
  gh.factory<_i7.ProfileRepository>(() => _i8.ProfileRepositoryImpl());
  gh.factory<_i9.SettingsRepository>(() => _i10.SettingsRepositoryImpl());
  gh.factory<_i11.SuggestionsRepository>(
      () => _i12.SuggestionsRepositoryImpl());
  gh.factory<_i13.UploaderRepository>(() => _i14.UploaderRepositoryImpl());
  gh.factory<_i15.AuthRepository>(() => _i16.AuthRepositoryImpl(
      uploaderRepository: gh<_i13.UploaderRepository>()));
  gh.factory<_i17.ProfileBloc>(() => _i17.ProfileBloc(
        profileRepository: gh<_i7.ProfileRepository>(),
        uploaderRepository: gh<_i13.UploaderRepository>(),
      ));
  gh.factory<_i18.SettingsBloc>(
      () => _i18.SettingsBloc(gh<_i9.SettingsRepository>()));
  gh.factory<_i19.SuggestionsBloc>(
      () => _i19.SuggestionsBloc(gh<_i11.SuggestionsRepository>()));
  gh.factory<_i20.AuthBloc>(
      () => _i20.AuthBloc(authRepository: gh<_i15.AuthRepository>()));
  return getIt;
}
