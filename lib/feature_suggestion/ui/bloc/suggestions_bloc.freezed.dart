// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'suggestions_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SuggestionsEvent {
  AppUser get appUser => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppUser appUser) loadSuggestions,
    required TResult Function(AppUser appUser, String userId) likeUser,
    required TResult Function(AppUser appUser, String userId) dislikeUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppUser appUser)? loadSuggestions,
    TResult? Function(AppUser appUser, String userId)? likeUser,
    TResult? Function(AppUser appUser, String userId)? dislikeUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppUser appUser)? loadSuggestions,
    TResult Function(AppUser appUser, String userId)? likeUser,
    TResult Function(AppUser appUser, String userId)? dislikeUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadSuggestionsEvent value) loadSuggestions,
    required TResult Function(_LikeUserEvent value) likeUser,
    required TResult Function(_DislikeUserEvent value) dislikeUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadSuggestionsEvent value)? loadSuggestions,
    TResult? Function(_LikeUserEvent value)? likeUser,
    TResult? Function(_DislikeUserEvent value)? dislikeUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadSuggestionsEvent value)? loadSuggestions,
    TResult Function(_LikeUserEvent value)? likeUser,
    TResult Function(_DislikeUserEvent value)? dislikeUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SuggestionsEventCopyWith<SuggestionsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuggestionsEventCopyWith<$Res> {
  factory $SuggestionsEventCopyWith(
          SuggestionsEvent value, $Res Function(SuggestionsEvent) then) =
      _$SuggestionsEventCopyWithImpl<$Res, SuggestionsEvent>;
  @useResult
  $Res call({AppUser appUser});

  $AppUserCopyWith<$Res> get appUser;
}

/// @nodoc
class _$SuggestionsEventCopyWithImpl<$Res, $Val extends SuggestionsEvent>
    implements $SuggestionsEventCopyWith<$Res> {
  _$SuggestionsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appUser = null,
  }) {
    return _then(_value.copyWith(
      appUser: null == appUser
          ? _value.appUser
          : appUser // ignore: cast_nullable_to_non_nullable
              as AppUser,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AppUserCopyWith<$Res> get appUser {
    return $AppUserCopyWith<$Res>(_value.appUser, (value) {
      return _then(_value.copyWith(appUser: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_LoadSuggestionsEventCopyWith<$Res>
    implements $SuggestionsEventCopyWith<$Res> {
  factory _$$_LoadSuggestionsEventCopyWith(_$_LoadSuggestionsEvent value,
          $Res Function(_$_LoadSuggestionsEvent) then) =
      __$$_LoadSuggestionsEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AppUser appUser});

  @override
  $AppUserCopyWith<$Res> get appUser;
}

/// @nodoc
class __$$_LoadSuggestionsEventCopyWithImpl<$Res>
    extends _$SuggestionsEventCopyWithImpl<$Res, _$_LoadSuggestionsEvent>
    implements _$$_LoadSuggestionsEventCopyWith<$Res> {
  __$$_LoadSuggestionsEventCopyWithImpl(_$_LoadSuggestionsEvent _value,
      $Res Function(_$_LoadSuggestionsEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appUser = null,
  }) {
    return _then(_$_LoadSuggestionsEvent(
      null == appUser
          ? _value.appUser
          : appUser // ignore: cast_nullable_to_non_nullable
              as AppUser,
    ));
  }
}

/// @nodoc

class _$_LoadSuggestionsEvent
    with DiagnosticableTreeMixin
    implements _LoadSuggestionsEvent {
  _$_LoadSuggestionsEvent(this.appUser);

  @override
  final AppUser appUser;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SuggestionsEvent.loadSuggestions(appUser: $appUser)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SuggestionsEvent.loadSuggestions'))
      ..add(DiagnosticsProperty('appUser', appUser));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadSuggestionsEvent &&
            (identical(other.appUser, appUser) || other.appUser == appUser));
  }

  @override
  int get hashCode => Object.hash(runtimeType, appUser);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadSuggestionsEventCopyWith<_$_LoadSuggestionsEvent> get copyWith =>
      __$$_LoadSuggestionsEventCopyWithImpl<_$_LoadSuggestionsEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppUser appUser) loadSuggestions,
    required TResult Function(AppUser appUser, String userId) likeUser,
    required TResult Function(AppUser appUser, String userId) dislikeUser,
  }) {
    return loadSuggestions(appUser);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppUser appUser)? loadSuggestions,
    TResult? Function(AppUser appUser, String userId)? likeUser,
    TResult? Function(AppUser appUser, String userId)? dislikeUser,
  }) {
    return loadSuggestions?.call(appUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppUser appUser)? loadSuggestions,
    TResult Function(AppUser appUser, String userId)? likeUser,
    TResult Function(AppUser appUser, String userId)? dislikeUser,
    required TResult orElse(),
  }) {
    if (loadSuggestions != null) {
      return loadSuggestions(appUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadSuggestionsEvent value) loadSuggestions,
    required TResult Function(_LikeUserEvent value) likeUser,
    required TResult Function(_DislikeUserEvent value) dislikeUser,
  }) {
    return loadSuggestions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadSuggestionsEvent value)? loadSuggestions,
    TResult? Function(_LikeUserEvent value)? likeUser,
    TResult? Function(_DislikeUserEvent value)? dislikeUser,
  }) {
    return loadSuggestions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadSuggestionsEvent value)? loadSuggestions,
    TResult Function(_LikeUserEvent value)? likeUser,
    TResult Function(_DislikeUserEvent value)? dislikeUser,
    required TResult orElse(),
  }) {
    if (loadSuggestions != null) {
      return loadSuggestions(this);
    }
    return orElse();
  }
}

abstract class _LoadSuggestionsEvent implements SuggestionsEvent {
  factory _LoadSuggestionsEvent(final AppUser appUser) =
      _$_LoadSuggestionsEvent;

  @override
  AppUser get appUser;
  @override
  @JsonKey(ignore: true)
  _$$_LoadSuggestionsEventCopyWith<_$_LoadSuggestionsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LikeUserEventCopyWith<$Res>
    implements $SuggestionsEventCopyWith<$Res> {
  factory _$$_LikeUserEventCopyWith(
          _$_LikeUserEvent value, $Res Function(_$_LikeUserEvent) then) =
      __$$_LikeUserEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AppUser appUser, String userId});

  @override
  $AppUserCopyWith<$Res> get appUser;
}

/// @nodoc
class __$$_LikeUserEventCopyWithImpl<$Res>
    extends _$SuggestionsEventCopyWithImpl<$Res, _$_LikeUserEvent>
    implements _$$_LikeUserEventCopyWith<$Res> {
  __$$_LikeUserEventCopyWithImpl(
      _$_LikeUserEvent _value, $Res Function(_$_LikeUserEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appUser = null,
    Object? userId = null,
  }) {
    return _then(_$_LikeUserEvent(
      null == appUser
          ? _value.appUser
          : appUser // ignore: cast_nullable_to_non_nullable
              as AppUser,
      null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LikeUserEvent with DiagnosticableTreeMixin implements _LikeUserEvent {
  _$_LikeUserEvent(this.appUser, this.userId);

  @override
  final AppUser appUser;
  @override
  final String userId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SuggestionsEvent.likeUser(appUser: $appUser, userId: $userId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SuggestionsEvent.likeUser'))
      ..add(DiagnosticsProperty('appUser', appUser))
      ..add(DiagnosticsProperty('userId', userId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LikeUserEvent &&
            (identical(other.appUser, appUser) || other.appUser == appUser) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, appUser, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LikeUserEventCopyWith<_$_LikeUserEvent> get copyWith =>
      __$$_LikeUserEventCopyWithImpl<_$_LikeUserEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppUser appUser) loadSuggestions,
    required TResult Function(AppUser appUser, String userId) likeUser,
    required TResult Function(AppUser appUser, String userId) dislikeUser,
  }) {
    return likeUser(appUser, userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppUser appUser)? loadSuggestions,
    TResult? Function(AppUser appUser, String userId)? likeUser,
    TResult? Function(AppUser appUser, String userId)? dislikeUser,
  }) {
    return likeUser?.call(appUser, userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppUser appUser)? loadSuggestions,
    TResult Function(AppUser appUser, String userId)? likeUser,
    TResult Function(AppUser appUser, String userId)? dislikeUser,
    required TResult orElse(),
  }) {
    if (likeUser != null) {
      return likeUser(appUser, userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadSuggestionsEvent value) loadSuggestions,
    required TResult Function(_LikeUserEvent value) likeUser,
    required TResult Function(_DislikeUserEvent value) dislikeUser,
  }) {
    return likeUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadSuggestionsEvent value)? loadSuggestions,
    TResult? Function(_LikeUserEvent value)? likeUser,
    TResult? Function(_DislikeUserEvent value)? dislikeUser,
  }) {
    return likeUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadSuggestionsEvent value)? loadSuggestions,
    TResult Function(_LikeUserEvent value)? likeUser,
    TResult Function(_DislikeUserEvent value)? dislikeUser,
    required TResult orElse(),
  }) {
    if (likeUser != null) {
      return likeUser(this);
    }
    return orElse();
  }
}

abstract class _LikeUserEvent implements SuggestionsEvent {
  factory _LikeUserEvent(final AppUser appUser, final String userId) =
      _$_LikeUserEvent;

  @override
  AppUser get appUser;
  String get userId;
  @override
  @JsonKey(ignore: true)
  _$$_LikeUserEventCopyWith<_$_LikeUserEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DislikeUserEventCopyWith<$Res>
    implements $SuggestionsEventCopyWith<$Res> {
  factory _$$_DislikeUserEventCopyWith(
          _$_DislikeUserEvent value, $Res Function(_$_DislikeUserEvent) then) =
      __$$_DislikeUserEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AppUser appUser, String userId});

  @override
  $AppUserCopyWith<$Res> get appUser;
}

/// @nodoc
class __$$_DislikeUserEventCopyWithImpl<$Res>
    extends _$SuggestionsEventCopyWithImpl<$Res, _$_DislikeUserEvent>
    implements _$$_DislikeUserEventCopyWith<$Res> {
  __$$_DislikeUserEventCopyWithImpl(
      _$_DislikeUserEvent _value, $Res Function(_$_DislikeUserEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appUser = null,
    Object? userId = null,
  }) {
    return _then(_$_DislikeUserEvent(
      null == appUser
          ? _value.appUser
          : appUser // ignore: cast_nullable_to_non_nullable
              as AppUser,
      null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DislikeUserEvent
    with DiagnosticableTreeMixin
    implements _DislikeUserEvent {
  _$_DislikeUserEvent(this.appUser, this.userId);

  @override
  final AppUser appUser;
  @override
  final String userId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SuggestionsEvent.dislikeUser(appUser: $appUser, userId: $userId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SuggestionsEvent.dislikeUser'))
      ..add(DiagnosticsProperty('appUser', appUser))
      ..add(DiagnosticsProperty('userId', userId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DislikeUserEvent &&
            (identical(other.appUser, appUser) || other.appUser == appUser) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, appUser, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DislikeUserEventCopyWith<_$_DislikeUserEvent> get copyWith =>
      __$$_DislikeUserEventCopyWithImpl<_$_DislikeUserEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppUser appUser) loadSuggestions,
    required TResult Function(AppUser appUser, String userId) likeUser,
    required TResult Function(AppUser appUser, String userId) dislikeUser,
  }) {
    return dislikeUser(appUser, userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppUser appUser)? loadSuggestions,
    TResult? Function(AppUser appUser, String userId)? likeUser,
    TResult? Function(AppUser appUser, String userId)? dislikeUser,
  }) {
    return dislikeUser?.call(appUser, userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppUser appUser)? loadSuggestions,
    TResult Function(AppUser appUser, String userId)? likeUser,
    TResult Function(AppUser appUser, String userId)? dislikeUser,
    required TResult orElse(),
  }) {
    if (dislikeUser != null) {
      return dislikeUser(appUser, userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadSuggestionsEvent value) loadSuggestions,
    required TResult Function(_LikeUserEvent value) likeUser,
    required TResult Function(_DislikeUserEvent value) dislikeUser,
  }) {
    return dislikeUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadSuggestionsEvent value)? loadSuggestions,
    TResult? Function(_LikeUserEvent value)? likeUser,
    TResult? Function(_DislikeUserEvent value)? dislikeUser,
  }) {
    return dislikeUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadSuggestionsEvent value)? loadSuggestions,
    TResult Function(_LikeUserEvent value)? likeUser,
    TResult Function(_DislikeUserEvent value)? dislikeUser,
    required TResult orElse(),
  }) {
    if (dislikeUser != null) {
      return dislikeUser(this);
    }
    return orElse();
  }
}

abstract class _DislikeUserEvent implements SuggestionsEvent {
  factory _DislikeUserEvent(final AppUser appUser, final String userId) =
      _$_DislikeUserEvent;

  @override
  AppUser get appUser;
  String get userId;
  @override
  @JsonKey(ignore: true)
  _$$_DislikeUserEventCopyWith<_$_DislikeUserEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SuggestionsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AppError appError) error,
    required TResult Function(String userId) interactionSuccess,
    required TResult Function(AppError appError) interactionError,
    required TResult Function(List<Suggestion> suggestions) suggestionsFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AppError appError)? error,
    TResult? Function(String userId)? interactionSuccess,
    TResult? Function(AppError appError)? interactionError,
    TResult? Function(List<Suggestion> suggestions)? suggestionsFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AppError appError)? error,
    TResult Function(String userId)? interactionSuccess,
    TResult Function(AppError appError)? interactionError,
    TResult Function(List<Suggestion> suggestions)? suggestionsFetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SuggestionsInitialState value) initial,
    required TResult Function(_SuggestionsLoadingState value) loading,
    required TResult Function(_SuggestionsErrorState value) error,
    required TResult Function(_InteractionSuccessState value)
        interactionSuccess,
    required TResult Function(_InteractionErrorState value) interactionError,
    required TResult Function(_SuggestionsFetchedState value)
        suggestionsFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SuggestionsInitialState value)? initial,
    TResult? Function(_SuggestionsLoadingState value)? loading,
    TResult? Function(_SuggestionsErrorState value)? error,
    TResult? Function(_InteractionSuccessState value)? interactionSuccess,
    TResult? Function(_InteractionErrorState value)? interactionError,
    TResult? Function(_SuggestionsFetchedState value)? suggestionsFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SuggestionsInitialState value)? initial,
    TResult Function(_SuggestionsLoadingState value)? loading,
    TResult Function(_SuggestionsErrorState value)? error,
    TResult Function(_InteractionSuccessState value)? interactionSuccess,
    TResult Function(_InteractionErrorState value)? interactionError,
    TResult Function(_SuggestionsFetchedState value)? suggestionsFetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuggestionsStateCopyWith<$Res> {
  factory $SuggestionsStateCopyWith(
          SuggestionsState value, $Res Function(SuggestionsState) then) =
      _$SuggestionsStateCopyWithImpl<$Res, SuggestionsState>;
}

/// @nodoc
class _$SuggestionsStateCopyWithImpl<$Res, $Val extends SuggestionsState>
    implements $SuggestionsStateCopyWith<$Res> {
  _$SuggestionsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_SuggestionsInitialStateCopyWith<$Res> {
  factory _$$_SuggestionsInitialStateCopyWith(_$_SuggestionsInitialState value,
          $Res Function(_$_SuggestionsInitialState) then) =
      __$$_SuggestionsInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SuggestionsInitialStateCopyWithImpl<$Res>
    extends _$SuggestionsStateCopyWithImpl<$Res, _$_SuggestionsInitialState>
    implements _$$_SuggestionsInitialStateCopyWith<$Res> {
  __$$_SuggestionsInitialStateCopyWithImpl(_$_SuggestionsInitialState _value,
      $Res Function(_$_SuggestionsInitialState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SuggestionsInitialState
    with DiagnosticableTreeMixin
    implements _SuggestionsInitialState {
  _$_SuggestionsInitialState();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SuggestionsState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'SuggestionsState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SuggestionsInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AppError appError) error,
    required TResult Function(String userId) interactionSuccess,
    required TResult Function(AppError appError) interactionError,
    required TResult Function(List<Suggestion> suggestions) suggestionsFetched,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AppError appError)? error,
    TResult? Function(String userId)? interactionSuccess,
    TResult? Function(AppError appError)? interactionError,
    TResult? Function(List<Suggestion> suggestions)? suggestionsFetched,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AppError appError)? error,
    TResult Function(String userId)? interactionSuccess,
    TResult Function(AppError appError)? interactionError,
    TResult Function(List<Suggestion> suggestions)? suggestionsFetched,
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
    required TResult Function(_SuggestionsInitialState value) initial,
    required TResult Function(_SuggestionsLoadingState value) loading,
    required TResult Function(_SuggestionsErrorState value) error,
    required TResult Function(_InteractionSuccessState value)
        interactionSuccess,
    required TResult Function(_InteractionErrorState value) interactionError,
    required TResult Function(_SuggestionsFetchedState value)
        suggestionsFetched,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SuggestionsInitialState value)? initial,
    TResult? Function(_SuggestionsLoadingState value)? loading,
    TResult? Function(_SuggestionsErrorState value)? error,
    TResult? Function(_InteractionSuccessState value)? interactionSuccess,
    TResult? Function(_InteractionErrorState value)? interactionError,
    TResult? Function(_SuggestionsFetchedState value)? suggestionsFetched,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SuggestionsInitialState value)? initial,
    TResult Function(_SuggestionsLoadingState value)? loading,
    TResult Function(_SuggestionsErrorState value)? error,
    TResult Function(_InteractionSuccessState value)? interactionSuccess,
    TResult Function(_InteractionErrorState value)? interactionError,
    TResult Function(_SuggestionsFetchedState value)? suggestionsFetched,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _SuggestionsInitialState implements SuggestionsState {
  factory _SuggestionsInitialState() = _$_SuggestionsInitialState;
}

/// @nodoc
abstract class _$$_SuggestionsLoadingStateCopyWith<$Res> {
  factory _$$_SuggestionsLoadingStateCopyWith(_$_SuggestionsLoadingState value,
          $Res Function(_$_SuggestionsLoadingState) then) =
      __$$_SuggestionsLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SuggestionsLoadingStateCopyWithImpl<$Res>
    extends _$SuggestionsStateCopyWithImpl<$Res, _$_SuggestionsLoadingState>
    implements _$$_SuggestionsLoadingStateCopyWith<$Res> {
  __$$_SuggestionsLoadingStateCopyWithImpl(_$_SuggestionsLoadingState _value,
      $Res Function(_$_SuggestionsLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SuggestionsLoadingState
    with DiagnosticableTreeMixin
    implements _SuggestionsLoadingState {
  _$_SuggestionsLoadingState();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SuggestionsState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'SuggestionsState.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SuggestionsLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AppError appError) error,
    required TResult Function(String userId) interactionSuccess,
    required TResult Function(AppError appError) interactionError,
    required TResult Function(List<Suggestion> suggestions) suggestionsFetched,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AppError appError)? error,
    TResult? Function(String userId)? interactionSuccess,
    TResult? Function(AppError appError)? interactionError,
    TResult? Function(List<Suggestion> suggestions)? suggestionsFetched,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AppError appError)? error,
    TResult Function(String userId)? interactionSuccess,
    TResult Function(AppError appError)? interactionError,
    TResult Function(List<Suggestion> suggestions)? suggestionsFetched,
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
    required TResult Function(_SuggestionsInitialState value) initial,
    required TResult Function(_SuggestionsLoadingState value) loading,
    required TResult Function(_SuggestionsErrorState value) error,
    required TResult Function(_InteractionSuccessState value)
        interactionSuccess,
    required TResult Function(_InteractionErrorState value) interactionError,
    required TResult Function(_SuggestionsFetchedState value)
        suggestionsFetched,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SuggestionsInitialState value)? initial,
    TResult? Function(_SuggestionsLoadingState value)? loading,
    TResult? Function(_SuggestionsErrorState value)? error,
    TResult? Function(_InteractionSuccessState value)? interactionSuccess,
    TResult? Function(_InteractionErrorState value)? interactionError,
    TResult? Function(_SuggestionsFetchedState value)? suggestionsFetched,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SuggestionsInitialState value)? initial,
    TResult Function(_SuggestionsLoadingState value)? loading,
    TResult Function(_SuggestionsErrorState value)? error,
    TResult Function(_InteractionSuccessState value)? interactionSuccess,
    TResult Function(_InteractionErrorState value)? interactionError,
    TResult Function(_SuggestionsFetchedState value)? suggestionsFetched,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _SuggestionsLoadingState implements SuggestionsState {
  factory _SuggestionsLoadingState() = _$_SuggestionsLoadingState;
}

/// @nodoc
abstract class _$$_SuggestionsErrorStateCopyWith<$Res> {
  factory _$$_SuggestionsErrorStateCopyWith(_$_SuggestionsErrorState value,
          $Res Function(_$_SuggestionsErrorState) then) =
      __$$_SuggestionsErrorStateCopyWithImpl<$Res>;
  @useResult
  $Res call({AppError appError});
}

/// @nodoc
class __$$_SuggestionsErrorStateCopyWithImpl<$Res>
    extends _$SuggestionsStateCopyWithImpl<$Res, _$_SuggestionsErrorState>
    implements _$$_SuggestionsErrorStateCopyWith<$Res> {
  __$$_SuggestionsErrorStateCopyWithImpl(_$_SuggestionsErrorState _value,
      $Res Function(_$_SuggestionsErrorState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appError = null,
  }) {
    return _then(_$_SuggestionsErrorState(
      null == appError
          ? _value.appError
          : appError // ignore: cast_nullable_to_non_nullable
              as AppError,
    ));
  }
}

/// @nodoc

class _$_SuggestionsErrorState
    with DiagnosticableTreeMixin
    implements _SuggestionsErrorState {
  _$_SuggestionsErrorState(this.appError);

  @override
  final AppError appError;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SuggestionsState.error(appError: $appError)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SuggestionsState.error'))
      ..add(DiagnosticsProperty('appError', appError));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SuggestionsErrorState &&
            (identical(other.appError, appError) ||
                other.appError == appError));
  }

  @override
  int get hashCode => Object.hash(runtimeType, appError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SuggestionsErrorStateCopyWith<_$_SuggestionsErrorState> get copyWith =>
      __$$_SuggestionsErrorStateCopyWithImpl<_$_SuggestionsErrorState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AppError appError) error,
    required TResult Function(String userId) interactionSuccess,
    required TResult Function(AppError appError) interactionError,
    required TResult Function(List<Suggestion> suggestions) suggestionsFetched,
  }) {
    return error(appError);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AppError appError)? error,
    TResult? Function(String userId)? interactionSuccess,
    TResult? Function(AppError appError)? interactionError,
    TResult? Function(List<Suggestion> suggestions)? suggestionsFetched,
  }) {
    return error?.call(appError);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AppError appError)? error,
    TResult Function(String userId)? interactionSuccess,
    TResult Function(AppError appError)? interactionError,
    TResult Function(List<Suggestion> suggestions)? suggestionsFetched,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(appError);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SuggestionsInitialState value) initial,
    required TResult Function(_SuggestionsLoadingState value) loading,
    required TResult Function(_SuggestionsErrorState value) error,
    required TResult Function(_InteractionSuccessState value)
        interactionSuccess,
    required TResult Function(_InteractionErrorState value) interactionError,
    required TResult Function(_SuggestionsFetchedState value)
        suggestionsFetched,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SuggestionsInitialState value)? initial,
    TResult? Function(_SuggestionsLoadingState value)? loading,
    TResult? Function(_SuggestionsErrorState value)? error,
    TResult? Function(_InteractionSuccessState value)? interactionSuccess,
    TResult? Function(_InteractionErrorState value)? interactionError,
    TResult? Function(_SuggestionsFetchedState value)? suggestionsFetched,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SuggestionsInitialState value)? initial,
    TResult Function(_SuggestionsLoadingState value)? loading,
    TResult Function(_SuggestionsErrorState value)? error,
    TResult Function(_InteractionSuccessState value)? interactionSuccess,
    TResult Function(_InteractionErrorState value)? interactionError,
    TResult Function(_SuggestionsFetchedState value)? suggestionsFetched,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _SuggestionsErrorState implements SuggestionsState {
  factory _SuggestionsErrorState(final AppError appError) =
      _$_SuggestionsErrorState;

  AppError get appError;
  @JsonKey(ignore: true)
  _$$_SuggestionsErrorStateCopyWith<_$_SuggestionsErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_InteractionSuccessStateCopyWith<$Res> {
  factory _$$_InteractionSuccessStateCopyWith(_$_InteractionSuccessState value,
          $Res Function(_$_InteractionSuccessState) then) =
      __$$_InteractionSuccessStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId});
}

/// @nodoc
class __$$_InteractionSuccessStateCopyWithImpl<$Res>
    extends _$SuggestionsStateCopyWithImpl<$Res, _$_InteractionSuccessState>
    implements _$$_InteractionSuccessStateCopyWith<$Res> {
  __$$_InteractionSuccessStateCopyWithImpl(_$_InteractionSuccessState _value,
      $Res Function(_$_InteractionSuccessState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$_InteractionSuccessState(
      null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_InteractionSuccessState
    with DiagnosticableTreeMixin
    implements _InteractionSuccessState {
  _$_InteractionSuccessState(this.userId);

  @override
  final String userId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SuggestionsState.interactionSuccess(userId: $userId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SuggestionsState.interactionSuccess'))
      ..add(DiagnosticsProperty('userId', userId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InteractionSuccessState &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InteractionSuccessStateCopyWith<_$_InteractionSuccessState>
      get copyWith =>
          __$$_InteractionSuccessStateCopyWithImpl<_$_InteractionSuccessState>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AppError appError) error,
    required TResult Function(String userId) interactionSuccess,
    required TResult Function(AppError appError) interactionError,
    required TResult Function(List<Suggestion> suggestions) suggestionsFetched,
  }) {
    return interactionSuccess(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AppError appError)? error,
    TResult? Function(String userId)? interactionSuccess,
    TResult? Function(AppError appError)? interactionError,
    TResult? Function(List<Suggestion> suggestions)? suggestionsFetched,
  }) {
    return interactionSuccess?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AppError appError)? error,
    TResult Function(String userId)? interactionSuccess,
    TResult Function(AppError appError)? interactionError,
    TResult Function(List<Suggestion> suggestions)? suggestionsFetched,
    required TResult orElse(),
  }) {
    if (interactionSuccess != null) {
      return interactionSuccess(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SuggestionsInitialState value) initial,
    required TResult Function(_SuggestionsLoadingState value) loading,
    required TResult Function(_SuggestionsErrorState value) error,
    required TResult Function(_InteractionSuccessState value)
        interactionSuccess,
    required TResult Function(_InteractionErrorState value) interactionError,
    required TResult Function(_SuggestionsFetchedState value)
        suggestionsFetched,
  }) {
    return interactionSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SuggestionsInitialState value)? initial,
    TResult? Function(_SuggestionsLoadingState value)? loading,
    TResult? Function(_SuggestionsErrorState value)? error,
    TResult? Function(_InteractionSuccessState value)? interactionSuccess,
    TResult? Function(_InteractionErrorState value)? interactionError,
    TResult? Function(_SuggestionsFetchedState value)? suggestionsFetched,
  }) {
    return interactionSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SuggestionsInitialState value)? initial,
    TResult Function(_SuggestionsLoadingState value)? loading,
    TResult Function(_SuggestionsErrorState value)? error,
    TResult Function(_InteractionSuccessState value)? interactionSuccess,
    TResult Function(_InteractionErrorState value)? interactionError,
    TResult Function(_SuggestionsFetchedState value)? suggestionsFetched,
    required TResult orElse(),
  }) {
    if (interactionSuccess != null) {
      return interactionSuccess(this);
    }
    return orElse();
  }
}

abstract class _InteractionSuccessState implements SuggestionsState {
  factory _InteractionSuccessState(final String userId) =
      _$_InteractionSuccessState;

  String get userId;
  @JsonKey(ignore: true)
  _$$_InteractionSuccessStateCopyWith<_$_InteractionSuccessState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_InteractionErrorStateCopyWith<$Res> {
  factory _$$_InteractionErrorStateCopyWith(_$_InteractionErrorState value,
          $Res Function(_$_InteractionErrorState) then) =
      __$$_InteractionErrorStateCopyWithImpl<$Res>;
  @useResult
  $Res call({AppError appError});
}

/// @nodoc
class __$$_InteractionErrorStateCopyWithImpl<$Res>
    extends _$SuggestionsStateCopyWithImpl<$Res, _$_InteractionErrorState>
    implements _$$_InteractionErrorStateCopyWith<$Res> {
  __$$_InteractionErrorStateCopyWithImpl(_$_InteractionErrorState _value,
      $Res Function(_$_InteractionErrorState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appError = null,
  }) {
    return _then(_$_InteractionErrorState(
      null == appError
          ? _value.appError
          : appError // ignore: cast_nullable_to_non_nullable
              as AppError,
    ));
  }
}

/// @nodoc

class _$_InteractionErrorState
    with DiagnosticableTreeMixin
    implements _InteractionErrorState {
  _$_InteractionErrorState(this.appError);

  @override
  final AppError appError;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SuggestionsState.interactionError(appError: $appError)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SuggestionsState.interactionError'))
      ..add(DiagnosticsProperty('appError', appError));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InteractionErrorState &&
            (identical(other.appError, appError) ||
                other.appError == appError));
  }

  @override
  int get hashCode => Object.hash(runtimeType, appError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InteractionErrorStateCopyWith<_$_InteractionErrorState> get copyWith =>
      __$$_InteractionErrorStateCopyWithImpl<_$_InteractionErrorState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AppError appError) error,
    required TResult Function(String userId) interactionSuccess,
    required TResult Function(AppError appError) interactionError,
    required TResult Function(List<Suggestion> suggestions) suggestionsFetched,
  }) {
    return interactionError(appError);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AppError appError)? error,
    TResult? Function(String userId)? interactionSuccess,
    TResult? Function(AppError appError)? interactionError,
    TResult? Function(List<Suggestion> suggestions)? suggestionsFetched,
  }) {
    return interactionError?.call(appError);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AppError appError)? error,
    TResult Function(String userId)? interactionSuccess,
    TResult Function(AppError appError)? interactionError,
    TResult Function(List<Suggestion> suggestions)? suggestionsFetched,
    required TResult orElse(),
  }) {
    if (interactionError != null) {
      return interactionError(appError);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SuggestionsInitialState value) initial,
    required TResult Function(_SuggestionsLoadingState value) loading,
    required TResult Function(_SuggestionsErrorState value) error,
    required TResult Function(_InteractionSuccessState value)
        interactionSuccess,
    required TResult Function(_InteractionErrorState value) interactionError,
    required TResult Function(_SuggestionsFetchedState value)
        suggestionsFetched,
  }) {
    return interactionError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SuggestionsInitialState value)? initial,
    TResult? Function(_SuggestionsLoadingState value)? loading,
    TResult? Function(_SuggestionsErrorState value)? error,
    TResult? Function(_InteractionSuccessState value)? interactionSuccess,
    TResult? Function(_InteractionErrorState value)? interactionError,
    TResult? Function(_SuggestionsFetchedState value)? suggestionsFetched,
  }) {
    return interactionError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SuggestionsInitialState value)? initial,
    TResult Function(_SuggestionsLoadingState value)? loading,
    TResult Function(_SuggestionsErrorState value)? error,
    TResult Function(_InteractionSuccessState value)? interactionSuccess,
    TResult Function(_InteractionErrorState value)? interactionError,
    TResult Function(_SuggestionsFetchedState value)? suggestionsFetched,
    required TResult orElse(),
  }) {
    if (interactionError != null) {
      return interactionError(this);
    }
    return orElse();
  }
}

abstract class _InteractionErrorState implements SuggestionsState {
  factory _InteractionErrorState(final AppError appError) =
      _$_InteractionErrorState;

  AppError get appError;
  @JsonKey(ignore: true)
  _$$_InteractionErrorStateCopyWith<_$_InteractionErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SuggestionsFetchedStateCopyWith<$Res> {
  factory _$$_SuggestionsFetchedStateCopyWith(_$_SuggestionsFetchedState value,
          $Res Function(_$_SuggestionsFetchedState) then) =
      __$$_SuggestionsFetchedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Suggestion> suggestions});
}

/// @nodoc
class __$$_SuggestionsFetchedStateCopyWithImpl<$Res>
    extends _$SuggestionsStateCopyWithImpl<$Res, _$_SuggestionsFetchedState>
    implements _$$_SuggestionsFetchedStateCopyWith<$Res> {
  __$$_SuggestionsFetchedStateCopyWithImpl(_$_SuggestionsFetchedState _value,
      $Res Function(_$_SuggestionsFetchedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? suggestions = null,
  }) {
    return _then(_$_SuggestionsFetchedState(
      null == suggestions
          ? _value._suggestions
          : suggestions // ignore: cast_nullable_to_non_nullable
              as List<Suggestion>,
    ));
  }
}

/// @nodoc

class _$_SuggestionsFetchedState
    with DiagnosticableTreeMixin
    implements _SuggestionsFetchedState {
  _$_SuggestionsFetchedState(final List<Suggestion> suggestions)
      : _suggestions = suggestions;

  final List<Suggestion> _suggestions;
  @override
  List<Suggestion> get suggestions {
    if (_suggestions is EqualUnmodifiableListView) return _suggestions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_suggestions);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SuggestionsState.suggestionsFetched(suggestions: $suggestions)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SuggestionsState.suggestionsFetched'))
      ..add(DiagnosticsProperty('suggestions', suggestions));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SuggestionsFetchedState &&
            const DeepCollectionEquality()
                .equals(other._suggestions, _suggestions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_suggestions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SuggestionsFetchedStateCopyWith<_$_SuggestionsFetchedState>
      get copyWith =>
          __$$_SuggestionsFetchedStateCopyWithImpl<_$_SuggestionsFetchedState>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AppError appError) error,
    required TResult Function(String userId) interactionSuccess,
    required TResult Function(AppError appError) interactionError,
    required TResult Function(List<Suggestion> suggestions) suggestionsFetched,
  }) {
    return suggestionsFetched(suggestions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AppError appError)? error,
    TResult? Function(String userId)? interactionSuccess,
    TResult? Function(AppError appError)? interactionError,
    TResult? Function(List<Suggestion> suggestions)? suggestionsFetched,
  }) {
    return suggestionsFetched?.call(suggestions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AppError appError)? error,
    TResult Function(String userId)? interactionSuccess,
    TResult Function(AppError appError)? interactionError,
    TResult Function(List<Suggestion> suggestions)? suggestionsFetched,
    required TResult orElse(),
  }) {
    if (suggestionsFetched != null) {
      return suggestionsFetched(suggestions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SuggestionsInitialState value) initial,
    required TResult Function(_SuggestionsLoadingState value) loading,
    required TResult Function(_SuggestionsErrorState value) error,
    required TResult Function(_InteractionSuccessState value)
        interactionSuccess,
    required TResult Function(_InteractionErrorState value) interactionError,
    required TResult Function(_SuggestionsFetchedState value)
        suggestionsFetched,
  }) {
    return suggestionsFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SuggestionsInitialState value)? initial,
    TResult? Function(_SuggestionsLoadingState value)? loading,
    TResult? Function(_SuggestionsErrorState value)? error,
    TResult? Function(_InteractionSuccessState value)? interactionSuccess,
    TResult? Function(_InteractionErrorState value)? interactionError,
    TResult? Function(_SuggestionsFetchedState value)? suggestionsFetched,
  }) {
    return suggestionsFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SuggestionsInitialState value)? initial,
    TResult Function(_SuggestionsLoadingState value)? loading,
    TResult Function(_SuggestionsErrorState value)? error,
    TResult Function(_InteractionSuccessState value)? interactionSuccess,
    TResult Function(_InteractionErrorState value)? interactionError,
    TResult Function(_SuggestionsFetchedState value)? suggestionsFetched,
    required TResult orElse(),
  }) {
    if (suggestionsFetched != null) {
      return suggestionsFetched(this);
    }
    return orElse();
  }
}

abstract class _SuggestionsFetchedState implements SuggestionsState {
  factory _SuggestionsFetchedState(final List<Suggestion> suggestions) =
      _$_SuggestionsFetchedState;

  List<Suggestion> get suggestions;
  @JsonKey(ignore: true)
  _$$_SuggestionsFetchedStateCopyWith<_$_SuggestionsFetchedState>
      get copyWith => throw _privateConstructorUsedError;
}
