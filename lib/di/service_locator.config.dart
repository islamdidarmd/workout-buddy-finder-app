// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:workout_buddy_finder/feature_auth/data/repository/auth_repository_impl.dart'
    as _i4;
import 'package:workout_buddy_finder/feature_auth/domain/domain.dart' as _i3;
import 'package:workout_buddy_finder/feature_auth/ui/bloc/auth_bloc.dart'
    as _i13;
import 'package:workout_buddy_finder/feature_location/domain/usecase/get_address_from_lat_long_use_case.dart'
    as _i5;
import 'package:workout_buddy_finder/feature_location/ui/bloc/location_retriever_bloc.dart'
    as _i6;
import 'package:workout_buddy_finder/feature_profile/data/repository/profile_repository.dart'
    as _i7;
import 'package:workout_buddy_finder/feature_profile/data/repository/profile_repository_impl.dart'
    as _i8;
import 'package:workout_buddy_finder/feature_profile/ui/bloc/profile_bloc.dart'
    as _i14;
import 'package:workout_buddy_finder/feature_suggestion/data/repository/suggestions_repository_impl.dart'
    as _i10;
import 'package:workout_buddy_finder/feature_suggestion/domain/domain.dart'
    as _i9;
import 'package:workout_buddy_finder/feature_suggestion/ui/bloc/suggestions_bloc.dart'
    as _i15;
import 'package:workout_buddy_finder/feature_upload/data/repository/uploader_repository_impl.dart'
    as _i12;
import 'package:workout_buddy_finder/feature_upload/domain/domain.dart' as _i11;

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
  gh.factory<_i3.AuthRepository>(() => _i4.AuthRepositoryImpl());
  gh.factory<_i5.GetAddressFromLatLongUseCase>(
      () => _i5.GetAddressFromLatLongUseCase());
  gh.factory<_i6.LocationRetrieverBloc>(() => _i6.LocationRetrieverBloc());
  gh.factory<_i7.ProfileRepository>(() => _i8.ProfileRepositoryImpl());
  gh.factory<_i9.SuggestionsRepository>(() => _i10.SuggestionsRepositoryImpl());
  gh.factory<_i11.UploaderRepository>(() => _i12.UploaderRepositoryImpl());
  gh.factory<_i13.AuthBloc>(
      () => _i13.AuthBloc(authRepository: gh<_i3.AuthRepository>()));
  gh.factory<_i14.ProfileBloc>(() => _i14.ProfileBloc(
        profileRepository: gh<_i7.ProfileRepository>(),
        uploaderRepository: gh<_i11.UploaderRepository>(),
      ));
  gh.factory<_i15.SuggestionsBloc>(
      () => _i15.SuggestionsBloc(gh<_i9.SuggestionsRepository>()));
  return getIt;
}
