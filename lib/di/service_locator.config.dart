// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:workout_buddy_finder/feature_auth/data/repository/auth_repository_impl.dart'
    as _i20;
import 'package:workout_buddy_finder/feature_auth/domain/domain.dart' as _i19;
import 'package:workout_buddy_finder/feature_auth/ui/bloc/auth_bloc.dart'
    as _i24;
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
    as _i21;
import 'package:workout_buddy_finder/feature_push/data/repository/push_repository_impl.dart'
    as _i10;
import 'package:workout_buddy_finder/feature_push/domain/push_repository.dart'
    as _i9;
import 'package:workout_buddy_finder/feature_settings/data/repository/settings_repository_impl.dart'
    as _i12;
import 'package:workout_buddy_finder/feature_settings/domain/domain.dart'
    as _i11;
import 'package:workout_buddy_finder/feature_settings/ui/bloc/settings_bloc.dart'
    as _i22;
import 'package:workout_buddy_finder/feature_suggestion/data/repository/suggestions_repository_impl.dart'
    as _i14;
import 'package:workout_buddy_finder/feature_suggestion/domain/domain.dart'
    as _i13;
import 'package:workout_buddy_finder/feature_suggestion/ui/bloc/suggestions_bloc.dart'
    as _i23;
import 'package:workout_buddy_finder/feature_upload/data/repository/uploader_repository_impl.dart'
    as _i16;
import 'package:workout_buddy_finder/feature_upload/domain/domain.dart' as _i15;
import 'package:workout_buddy_finder/feature_visit_user/data/repository/visit_user_repository_impl.dart'
    as _i18;
import 'package:workout_buddy_finder/feature_visit_user/domain/domain.dart'
    as _i17;

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
  gh.factory<_i9.PushRepository>(() => _i10.PushRepositoryImpl());
  gh.factory<_i11.SettingsRepository>(() => _i12.SettingsRepositoryImpl());
  gh.factory<_i13.SuggestionsRepository>(
      () => _i14.SuggestionsRepositoryImpl());
  gh.factory<_i15.UploaderRepository>(() => _i16.UploaderRepositoryImpl());
  gh.factory<_i17.VisitUserRepository>(() => _i18.VisitUserRepositoryImpl());
  gh.factory<_i19.AuthRepository>(() => _i20.AuthRepositoryImpl(
      uploaderRepository: gh<_i15.UploaderRepository>()));
  gh.factory<_i21.ProfileBloc>(() => _i21.ProfileBloc(
        profileRepository: gh<_i7.ProfileRepository>(),
        uploaderRepository: gh<_i15.UploaderRepository>(),
      ));
  gh.factory<_i22.SettingsBloc>(
      () => _i22.SettingsBloc(gh<_i11.SettingsRepository>()));
  gh.factory<_i23.SuggestionsBloc>(
      () => _i23.SuggestionsBloc(gh<_i13.SuggestionsRepository>()));
  gh.factory<_i24.AuthBloc>(() => _i24.AuthBloc(
        authRepository: gh<_i19.AuthRepository>(),
        pushRepository: gh<_i9.PushRepository>(),
      ));
  return getIt;
}
