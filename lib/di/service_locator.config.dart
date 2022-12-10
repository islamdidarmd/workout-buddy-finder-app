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
    as _i6;
import 'package:workout_buddy_finder/auth/domain/use_case/login_with_google_use_case.dart'
    as _i8;
import 'package:workout_buddy_finder/auth/ui/bloc/auth_bloc.dart' as _i3;
import 'package:workout_buddy_finder/location/ui/bloc/location_retriever_bloc.dart'
    as _i7;

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
    gh.factory<_i6.IsLoggedInUseCase>(
        () => _i6.IsLoggedInUseCase(authRepository: gh<_i4.AuthRepository>()));
    gh.factory<_i7.LocationRetrieverBloc>(() => _i7.LocationRetrieverBloc());
    gh.factory<_i8.LoginWithGoogleUseCase>(() =>
        _i8.LoginWithGoogleUseCase(authRepository: gh<_i4.AuthRepository>()));
    return this;
  }
}
