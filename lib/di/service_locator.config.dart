// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:workout_buddy_finder/auth/auth.dart' as _i9;
import 'package:workout_buddy_finder/auth/data/repository/auth_repository_impl.dart'
    as _i4;
import 'package:workout_buddy_finder/auth/domain/domain.dart' as _i3;
import 'package:workout_buddy_finder/auth/ui/bloc/auth_bloc.dart' as _i12;
import 'package:workout_buddy_finder/location/domain/usecase/get_address_from_lat_long_use_case.dart'
    as _i5;
import 'package:workout_buddy_finder/location/ui/bloc/location_retriever_bloc.dart'
    as _i6;
import 'package:workout_buddy_finder/profile/data/data.dart' as _i8;
import 'package:workout_buddy_finder/profile/data/repository/profile_repository.dart'
    as _i10;
import 'package:workout_buddy_finder/profile/data/repository/profile_repository_impl.dart'
    as _i11;
import 'package:workout_buddy_finder/profile/ui/bloc/profile_bloc.dart' as _i7;

/// ignore_for_file: unnecessary_lambdas
/// ignore_for_file: lines_longer_than_80_chars
extension GetItInjectableX on _i1.GetIt {
  /// initializes the registration of main-scope dependencies inside of [GetIt]
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.AuthRepository>(() => _i4.AuthRepositoryImpl());
    gh.factory<_i5.GetAddressFromLatLongUseCase>(
        () => _i5.GetAddressFromLatLongUseCase());
    gh.factory<_i6.LocationRetrieverBloc>(() => _i6.LocationRetrieverBloc());
    gh.factory<_i7.ProfileBloc>(() => _i7.ProfileBloc(
          profileRepository: gh<_i8.ProfileRepository>(),
          authRepository: gh<_i9.AuthRepository>(),
        ));
    gh.factory<_i10.ProfileRepository>(() => _i11.ProfileRepositoryImpl());
    gh.factory<_i12.AuthBloc>(
        () => _i12.AuthBloc(authRepository: gh<_i3.AuthRepository>()));
    return this;
  }
}
