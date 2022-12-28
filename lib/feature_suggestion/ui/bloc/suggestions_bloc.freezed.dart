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
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppUser appUser)? loadSuggestions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppUser appUser)? loadSuggestions,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadSuggestionsEvent value) loadSuggestions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadSuggestionsEvent value)? loadSuggestions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadSuggestionsEvent value)? loadSuggestions,
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
  }) {
    return loadSuggestions(appUser);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppUser appUser)? loadSuggestions,
  }) {
    return loadSuggestions?.call(appUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppUser appUser)? loadSuggestions,
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
  }) {
    return loadSuggestions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadSuggestionsEvent value)? loadSuggestions,
  }) {
    return loadSuggestions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadSuggestionsEvent value)? loadSuggestions,
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
mixin _$SuggestionsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AppError appError) error,
    required TResult Function(List<Suggestion> suggestions) suggestionsFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AppError appError)? error,
    TResult? Function(List<Suggestion> suggestions)? suggestionsFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AppError appError)? error,
    TResult Function(List<Suggestion> suggestions)? suggestionsFetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SuggestionsInitialState value) initial,
    required TResult Function(_SuggestionsLoadingState value) loading,
    required TResult Function(_SuggestionsErrorState value) error,
    required TResult Function(_SuggestionsFetchedState value)
        suggestionsFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SuggestionsInitialState value)? initial,
    TResult? Function(_SuggestionsLoadingState value)? loading,
    TResult? Function(_SuggestionsErrorState value)? error,
    TResult? Function(_SuggestionsFetchedState value)? suggestionsFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SuggestionsInitialState value)? initial,
    TResult Function(_SuggestionsLoadingState value)? loading,
    TResult Function(_SuggestionsErrorState value)? error,
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
