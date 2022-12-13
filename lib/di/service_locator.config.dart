// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:workout_buddy_finder/auth/data/repository/auth_repository_impl.dart'
    as _i5;
import 'package:workout_buddy_finder/auth/domain/domain.dart' as _i4;
import 'package:workout_buddy_finder/auth/domain/use_case/is_logged_in_use_case.dart'
    as _i8;
import 'package:workout_buddy_finder/auth/domain/use_case/login_with_google_use_case.dart'
    as _i10;
import 'package:workout_buddy_finder/auth/ui/bloc/auth_bloc.dart' as _i3;
import 'package:workout_buddy_finder/location/domain/usecase/get_address_from_lat_long_use_case.dart'
    as _i6;
import 'package:workout_buddy_finder/location/ui/bloc/location_retriever_bloc.dart'
    as _i9;
import 'package:workout_buddy_finder/profile/domain/use_case/get_interest_list_use_case.dart'
    as _i7;
import 'package:workout_buddy_finder/profile/ui/bloc/profile_bloc.dart' as _i11;

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
    gh.factory<_i3.AuthBloc>(() => _i3.AuthBloc(
          loginWithGoogleUseCase: gh<_i4.LoginWithGoogleUseCase>(),
          isLoggedInUseCase: gh<_i4.IsLoggedInUseCase>(),
        ));
    gh.factory<_i4.AuthRepository>(() => _i5.AuthRepositoryImpl());
    gh.factory<_i6.GetAddressFromLatLongUseCase>(
        () => _i6.GetAddressFromLatLongUseCase());
    gh.factory<_i7.GetInterestListUseCase>(() => _i7.GetInterestListUseCase());
    gh.factory<_i8.IsLoggedInUseCase>(
        () => _i8.IsLoggedInUseCase(authRepository: gh<_i4.AuthRepository>()));
    gh.factory<_i9.LocationRetrieverBloc>(() => _i9.LocationRetrieverBloc());
    gh.factory<_i10.LoginWithGoogleUseCase>(() =>
        _i10.LoginWithGoogleUseCase(authRepository: gh<_i4.AuthRepository>()));
    gh.factory<_i11.ProfileBloc>(() => _i11.ProfileBloc(
        getInterestListUseCase: gh<_i7.GetInterestListUseCase>()));
    return this;
  }
}
