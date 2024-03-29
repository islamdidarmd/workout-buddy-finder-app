// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AppError error) signInFailure,
    required TResult Function(AppError error) signOutFailure,
    required TResult Function() signedIn,
    required TResult Function() signedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AppError error)? signInFailure,
    TResult? Function(AppError error)? signOutFailure,
    TResult? Function()? signedIn,
    TResult? Function()? signedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AppError error)? signInFailure,
    TResult Function(AppError error)? signOutFailure,
    TResult Function()? signedIn,
    TResult Function()? signedOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_SignInFailureState value) signInFailure,
    required TResult Function(_SignOutFailureState value) signOutFailure,
    required TResult Function(_SignedInState value) signedIn,
    required TResult Function(_SignedOutState value) signedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_SignInFailureState value)? signInFailure,
    TResult? Function(_SignOutFailureState value)? signOutFailure,
    TResult? Function(_SignedInState value)? signedIn,
    TResult? Function(_SignedOutState value)? signedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SignInFailureState value)? signInFailure,
    TResult Function(_SignOutFailureState value)? signOutFailure,
    TResult Function(_SignedInState value)? signedIn,
    TResult Function(_SignedOutState value)? signedOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialStateCopyWith<$Res> {
  factory _$$_InitialStateCopyWith(
          _$_InitialState value, $Res Function(_$_InitialState) then) =
      __$$_InitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_InitialState>
    implements _$$_InitialStateCopyWith<$Res> {
  __$$_InitialStateCopyWithImpl(
      _$_InitialState _value, $Res Function(_$_InitialState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_InitialState with DiagnosticableTreeMixin implements _InitialState {
  const _$_InitialState();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AuthState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_InitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AppError error) signInFailure,
    required TResult Function(AppError error) signOutFailure,
    required TResult Function() signedIn,
    required TResult Function() signedOut,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AppError error)? signInFailure,
    TResult? Function(AppError error)? signOutFailure,
    TResult? Function()? signedIn,
    TResult? Function()? signedOut,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AppError error)? signInFailure,
    TResult Function(AppError error)? signOutFailure,
    TResult Function()? signedIn,
    TResult Function()? signedOut,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_SignInFailureState value) signInFailure,
    required TResult Function(_SignOutFailureState value) signOutFailure,
    required TResult Function(_SignedInState value) signedIn,
    required TResult Function(_SignedOutState value) signedOut,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_SignInFailureState value)? signInFailure,
    TResult? Function(_SignOutFailureState value)? signOutFailure,
    TResult? Function(_SignedInState value)? signedIn,
    TResult? Function(_SignedOutState value)? signedOut,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SignInFailureState value)? signInFailure,
    TResult Function(_SignOutFailureState value)? signOutFailure,
    TResult Function(_SignedInState value)? signedIn,
    TResult Function(_SignedOutState value)? signedOut,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialState implements AuthState {
  const factory _InitialState() = _$_InitialState;
}

/// @nodoc
abstract class _$$_LoadingStateCopyWith<$Res> {
  factory _$$_LoadingStateCopyWith(
          _$_LoadingState value, $Res Function(_$_LoadingState) then) =
      __$$_LoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_LoadingState>
    implements _$$_LoadingStateCopyWith<$Res> {
  __$$_LoadingStateCopyWithImpl(
      _$_LoadingState _value, $Res Function(_$_LoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoadingState with DiagnosticableTreeMixin implements _LoadingState {
  const _$_LoadingState();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AuthState.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AppError error) signInFailure,
    required TResult Function(AppError error) signOutFailure,
    required TResult Function() signedIn,
    required TResult Function() signedOut,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AppError error)? signInFailure,
    TResult? Function(AppError error)? signOutFailure,
    TResult? Function()? signedIn,
    TResult? Function()? signedOut,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AppError error)? signInFailure,
    TResult Function(AppError error)? signOutFailure,
    TResult Function()? signedIn,
    TResult Function()? signedOut,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_SignInFailureState value) signInFailure,
    required TResult Function(_SignOutFailureState value) signOutFailure,
    required TResult Function(_SignedInState value) signedIn,
    required TResult Function(_SignedOutState value) signedOut,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_SignInFailureState value)? signInFailure,
    TResult? Function(_SignOutFailureState value)? signOutFailure,
    TResult? Function(_SignedInState value)? signedIn,
    TResult? Function(_SignedOutState value)? signedOut,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SignInFailureState value)? signInFailure,
    TResult Function(_SignOutFailureState value)? signOutFailure,
    TResult Function(_SignedInState value)? signedIn,
    TResult Function(_SignedOutState value)? signedOut,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingState implements AuthState {
  const factory _LoadingState() = _$_LoadingState;
}

/// @nodoc
abstract class _$$_SignInFailureStateCopyWith<$Res> {
  factory _$$_SignInFailureStateCopyWith(_$_SignInFailureState value,
          $Res Function(_$_SignInFailureState) then) =
      __$$_SignInFailureStateCopyWithImpl<$Res>;
  @useResult
  $Res call({AppError error});
}

/// @nodoc
class __$$_SignInFailureStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_SignInFailureState>
    implements _$$_SignInFailureStateCopyWith<$Res> {
  __$$_SignInFailureStateCopyWithImpl(
      _$_SignInFailureState _value, $Res Function(_$_SignInFailureState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_SignInFailureState(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as AppError,
    ));
  }
}

/// @nodoc

class _$_SignInFailureState
    with DiagnosticableTreeMixin
    implements _SignInFailureState {
  const _$_SignInFailureState(this.error);

  @override
  final AppError error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState.signInFailure(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthState.signInFailure'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignInFailureState &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignInFailureStateCopyWith<_$_SignInFailureState> get copyWith =>
      __$$_SignInFailureStateCopyWithImpl<_$_SignInFailureState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AppError error) signInFailure,
    required TResult Function(AppError error) signOutFailure,
    required TResult Function() signedIn,
    required TResult Function() signedOut,
  }) {
    return signInFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AppError error)? signInFailure,
    TResult? Function(AppError error)? signOutFailure,
    TResult? Function()? signedIn,
    TResult? Function()? signedOut,
  }) {
    return signInFailure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AppError error)? signInFailure,
    TResult Function(AppError error)? signOutFailure,
    TResult Function()? signedIn,
    TResult Function()? signedOut,
    required TResult orElse(),
  }) {
    if (signInFailure != null) {
      return signInFailure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_SignInFailureState value) signInFailure,
    required TResult Function(_SignOutFailureState value) signOutFailure,
    required TResult Function(_SignedInState value) signedIn,
    required TResult Function(_SignedOutState value) signedOut,
  }) {
    return signInFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_SignInFailureState value)? signInFailure,
    TResult? Function(_SignOutFailureState value)? signOutFailure,
    TResult? Function(_SignedInState value)? signedIn,
    TResult? Function(_SignedOutState value)? signedOut,
  }) {
    return signInFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SignInFailureState value)? signInFailure,
    TResult Function(_SignOutFailureState value)? signOutFailure,
    TResult Function(_SignedInState value)? signedIn,
    TResult Function(_SignedOutState value)? signedOut,
    required TResult orElse(),
  }) {
    if (signInFailure != null) {
      return signInFailure(this);
    }
    return orElse();
  }
}

abstract class _SignInFailureState implements AuthState {
  const factory _SignInFailureState(final AppError error) =
      _$_SignInFailureState;

  AppError get error;
  @JsonKey(ignore: true)
  _$$_SignInFailureStateCopyWith<_$_SignInFailureState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SignOutFailureStateCopyWith<$Res> {
  factory _$$_SignOutFailureStateCopyWith(_$_SignOutFailureState value,
          $Res Function(_$_SignOutFailureState) then) =
      __$$_SignOutFailureStateCopyWithImpl<$Res>;
  @useResult
  $Res call({AppError error});
}

/// @nodoc
class __$$_SignOutFailureStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_SignOutFailureState>
    implements _$$_SignOutFailureStateCopyWith<$Res> {
  __$$_SignOutFailureStateCopyWithImpl(_$_SignOutFailureState _value,
      $Res Function(_$_SignOutFailureState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_SignOutFailureState(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as AppError,
    ));
  }
}

/// @nodoc

class _$_SignOutFailureState
    with DiagnosticableTreeMixin
    implements _SignOutFailureState {
  const _$_SignOutFailureState(this.error);

  @override
  final AppError error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState.signOutFailure(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthState.signOutFailure'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignOutFailureState &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignOutFailureStateCopyWith<_$_SignOutFailureState> get copyWith =>
      __$$_SignOutFailureStateCopyWithImpl<_$_SignOutFailureState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AppError error) signInFailure,
    required TResult Function(AppError error) signOutFailure,
    required TResult Function() signedIn,
    required TResult Function() signedOut,
  }) {
    return signOutFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AppError error)? signInFailure,
    TResult? Function(AppError error)? signOutFailure,
    TResult? Function()? signedIn,
    TResult? Function()? signedOut,
  }) {
    return signOutFailure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AppError error)? signInFailure,
    TResult Function(AppError error)? signOutFailure,
    TResult Function()? signedIn,
    TResult Function()? signedOut,
    required TResult orElse(),
  }) {
    if (signOutFailure != null) {
      return signOutFailure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_SignInFailureState value) signInFailure,
    required TResult Function(_SignOutFailureState value) signOutFailure,
    required TResult Function(_SignedInState value) signedIn,
    required TResult Function(_SignedOutState value) signedOut,
  }) {
    return signOutFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_SignInFailureState value)? signInFailure,
    TResult? Function(_SignOutFailureState value)? signOutFailure,
    TResult? Function(_SignedInState value)? signedIn,
    TResult? Function(_SignedOutState value)? signedOut,
  }) {
    return signOutFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SignInFailureState value)? signInFailure,
    TResult Function(_SignOutFailureState value)? signOutFailure,
    TResult Function(_SignedInState value)? signedIn,
    TResult Function(_SignedOutState value)? signedOut,
    required TResult orElse(),
  }) {
    if (signOutFailure != null) {
      return signOutFailure(this);
    }
    return orElse();
  }
}

abstract class _SignOutFailureState implements AuthState {
  const factory _SignOutFailureState(final AppError error) =
      _$_SignOutFailureState;

  AppError get error;
  @JsonKey(ignore: true)
  _$$_SignOutFailureStateCopyWith<_$_SignOutFailureState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SignedInStateCopyWith<$Res> {
  factory _$$_SignedInStateCopyWith(
          _$_SignedInState value, $Res Function(_$_SignedInState) then) =
      __$$_SignedInStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SignedInStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_SignedInState>
    implements _$$_SignedInStateCopyWith<$Res> {
  __$$_SignedInStateCopyWithImpl(
      _$_SignedInState _value, $Res Function(_$_SignedInState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SignedInState with DiagnosticableTreeMixin implements _SignedInState {
  const _$_SignedInState();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState.signedIn()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AuthState.signedIn'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SignedInState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AppError error) signInFailure,
    required TResult Function(AppError error) signOutFailure,
    required TResult Function() signedIn,
    required TResult Function() signedOut,
  }) {
    return signedIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AppError error)? signInFailure,
    TResult? Function(AppError error)? signOutFailure,
    TResult? Function()? signedIn,
    TResult? Function()? signedOut,
  }) {
    return signedIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AppError error)? signInFailure,
    TResult Function(AppError error)? signOutFailure,
    TResult Function()? signedIn,
    TResult Function()? signedOut,
    required TResult orElse(),
  }) {
    if (signedIn != null) {
      return signedIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_SignInFailureState value) signInFailure,
    required TResult Function(_SignOutFailureState value) signOutFailure,
    required TResult Function(_SignedInState value) signedIn,
    required TResult Function(_SignedOutState value) signedOut,
  }) {
    return signedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_SignInFailureState value)? signInFailure,
    TResult? Function(_SignOutFailureState value)? signOutFailure,
    TResult? Function(_SignedInState value)? signedIn,
    TResult? Function(_SignedOutState value)? signedOut,
  }) {
    return signedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SignInFailureState value)? signInFailure,
    TResult Function(_SignOutFailureState value)? signOutFailure,
    TResult Function(_SignedInState value)? signedIn,
    TResult Function(_SignedOutState value)? signedOut,
    required TResult orElse(),
  }) {
    if (signedIn != null) {
      return signedIn(this);
    }
    return orElse();
  }
}

abstract class _SignedInState implements AuthState {
  const factory _SignedInState() = _$_SignedInState;
}

/// @nodoc
abstract class _$$_SignedOutStateCopyWith<$Res> {
  factory _$$_SignedOutStateCopyWith(
          _$_SignedOutState value, $Res Function(_$_SignedOutState) then) =
      __$$_SignedOutStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SignedOutStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_SignedOutState>
    implements _$$_SignedOutStateCopyWith<$Res> {
  __$$_SignedOutStateCopyWithImpl(
      _$_SignedOutState _value, $Res Function(_$_SignedOutState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SignedOutState
    with DiagnosticableTreeMixin
    implements _SignedOutState {
  const _$_SignedOutState();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthState.signedOut()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AuthState.signedOut'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SignedOutState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AppError error) signInFailure,
    required TResult Function(AppError error) signOutFailure,
    required TResult Function() signedIn,
    required TResult Function() signedOut,
  }) {
    return signedOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AppError error)? signInFailure,
    TResult? Function(AppError error)? signOutFailure,
    TResult? Function()? signedIn,
    TResult? Function()? signedOut,
  }) {
    return signedOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AppError error)? signInFailure,
    TResult Function(AppError error)? signOutFailure,
    TResult Function()? signedIn,
    TResult Function()? signedOut,
    required TResult orElse(),
  }) {
    if (signedOut != null) {
      return signedOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_SignInFailureState value) signInFailure,
    required TResult Function(_SignOutFailureState value) signOutFailure,
    required TResult Function(_SignedInState value) signedIn,
    required TResult Function(_SignedOutState value) signedOut,
  }) {
    return signedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_SignInFailureState value)? signInFailure,
    TResult? Function(_SignOutFailureState value)? signOutFailure,
    TResult? Function(_SignedInState value)? signedIn,
    TResult? Function(_SignedOutState value)? signedOut,
  }) {
    return signedOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SignInFailureState value)? signInFailure,
    TResult Function(_SignOutFailureState value)? signOutFailure,
    TResult Function(_SignedInState value)? signedIn,
    TResult Function(_SignedOutState value)? signedOut,
    required TResult orElse(),
  }) {
    if (signedOut != null) {
      return signedOut(this);
    }
    return orElse();
  }
}

abstract class _SignedOutState implements AuthState {
  const factory _SignedOutState() = _$_SignedOutState;
}
