// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'activity_tracker_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ActivityTrackerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<HealthDataPoint> data) healthDataUpdated,
    required TResult Function() noPermission,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<HealthDataPoint> data)? healthDataUpdated,
    TResult? Function()? noPermission,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<HealthDataPoint> data)? healthDataUpdated,
    TResult Function()? noPermission,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_HealthDataUpdatedState value) healthDataUpdated,
    required TResult Function(_HealthPermisisonRequired value) noPermission,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_HealthDataUpdatedState value)? healthDataUpdated,
    TResult? Function(_HealthPermisisonRequired value)? noPermission,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_HealthDataUpdatedState value)? healthDataUpdated,
    TResult Function(_HealthPermisisonRequired value)? noPermission,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivityTrackerStateCopyWith<$Res> {
  factory $ActivityTrackerStateCopyWith(ActivityTrackerState value,
          $Res Function(ActivityTrackerState) then) =
      _$ActivityTrackerStateCopyWithImpl<$Res, ActivityTrackerState>;
}

/// @nodoc
class _$ActivityTrackerStateCopyWithImpl<$Res,
        $Val extends ActivityTrackerState>
    implements $ActivityTrackerStateCopyWith<$Res> {
  _$ActivityTrackerStateCopyWithImpl(this._value, this._then);

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
    extends _$ActivityTrackerStateCopyWithImpl<$Res, _$_InitialState>
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
    return 'ActivityTrackerState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'ActivityTrackerState.initial'));
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
    required TResult Function(List<HealthDataPoint> data) healthDataUpdated,
    required TResult Function() noPermission,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<HealthDataPoint> data)? healthDataUpdated,
    TResult? Function()? noPermission,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<HealthDataPoint> data)? healthDataUpdated,
    TResult Function()? noPermission,
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
    required TResult Function(_HealthDataUpdatedState value) healthDataUpdated,
    required TResult Function(_HealthPermisisonRequired value) noPermission,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_HealthDataUpdatedState value)? healthDataUpdated,
    TResult? Function(_HealthPermisisonRequired value)? noPermission,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_HealthDataUpdatedState value)? healthDataUpdated,
    TResult Function(_HealthPermisisonRequired value)? noPermission,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialState implements ActivityTrackerState {
  const factory _InitialState() = _$_InitialState;
}

/// @nodoc
abstract class _$$_HealthDataUpdatedStateCopyWith<$Res> {
  factory _$$_HealthDataUpdatedStateCopyWith(_$_HealthDataUpdatedState value,
          $Res Function(_$_HealthDataUpdatedState) then) =
      __$$_HealthDataUpdatedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<HealthDataPoint> data});
}

/// @nodoc
class __$$_HealthDataUpdatedStateCopyWithImpl<$Res>
    extends _$ActivityTrackerStateCopyWithImpl<$Res, _$_HealthDataUpdatedState>
    implements _$$_HealthDataUpdatedStateCopyWith<$Res> {
  __$$_HealthDataUpdatedStateCopyWithImpl(_$_HealthDataUpdatedState _value,
      $Res Function(_$_HealthDataUpdatedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_HealthDataUpdatedState(
      null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<HealthDataPoint>,
    ));
  }
}

/// @nodoc

class _$_HealthDataUpdatedState
    with DiagnosticableTreeMixin
    implements _HealthDataUpdatedState {
  const _$_HealthDataUpdatedState(final List<HealthDataPoint> data)
      : _data = data;

  final List<HealthDataPoint> _data;
  @override
  List<HealthDataPoint> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ActivityTrackerState.healthDataUpdated(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'ActivityTrackerState.healthDataUpdated'))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HealthDataUpdatedState &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HealthDataUpdatedStateCopyWith<_$_HealthDataUpdatedState> get copyWith =>
      __$$_HealthDataUpdatedStateCopyWithImpl<_$_HealthDataUpdatedState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<HealthDataPoint> data) healthDataUpdated,
    required TResult Function() noPermission,
  }) {
    return healthDataUpdated(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<HealthDataPoint> data)? healthDataUpdated,
    TResult? Function()? noPermission,
  }) {
    return healthDataUpdated?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<HealthDataPoint> data)? healthDataUpdated,
    TResult Function()? noPermission,
    required TResult orElse(),
  }) {
    if (healthDataUpdated != null) {
      return healthDataUpdated(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_HealthDataUpdatedState value) healthDataUpdated,
    required TResult Function(_HealthPermisisonRequired value) noPermission,
  }) {
    return healthDataUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_HealthDataUpdatedState value)? healthDataUpdated,
    TResult? Function(_HealthPermisisonRequired value)? noPermission,
  }) {
    return healthDataUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_HealthDataUpdatedState value)? healthDataUpdated,
    TResult Function(_HealthPermisisonRequired value)? noPermission,
    required TResult orElse(),
  }) {
    if (healthDataUpdated != null) {
      return healthDataUpdated(this);
    }
    return orElse();
  }
}

abstract class _HealthDataUpdatedState implements ActivityTrackerState {
  const factory _HealthDataUpdatedState(final List<HealthDataPoint> data) =
      _$_HealthDataUpdatedState;

  List<HealthDataPoint> get data;
  @JsonKey(ignore: true)
  _$$_HealthDataUpdatedStateCopyWith<_$_HealthDataUpdatedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_HealthPermisisonRequiredCopyWith<$Res> {
  factory _$$_HealthPermisisonRequiredCopyWith(
          _$_HealthPermisisonRequired value,
          $Res Function(_$_HealthPermisisonRequired) then) =
      __$$_HealthPermisisonRequiredCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_HealthPermisisonRequiredCopyWithImpl<$Res>
    extends _$ActivityTrackerStateCopyWithImpl<$Res,
        _$_HealthPermisisonRequired>
    implements _$$_HealthPermisisonRequiredCopyWith<$Res> {
  __$$_HealthPermisisonRequiredCopyWithImpl(_$_HealthPermisisonRequired _value,
      $Res Function(_$_HealthPermisisonRequired) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_HealthPermisisonRequired
    with DiagnosticableTreeMixin
    implements _HealthPermisisonRequired {
  const _$_HealthPermisisonRequired();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ActivityTrackerState.noPermission()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'ActivityTrackerState.noPermission'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HealthPermisisonRequired);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<HealthDataPoint> data) healthDataUpdated,
    required TResult Function() noPermission,
  }) {
    return noPermission();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<HealthDataPoint> data)? healthDataUpdated,
    TResult? Function()? noPermission,
  }) {
    return noPermission?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<HealthDataPoint> data)? healthDataUpdated,
    TResult Function()? noPermission,
    required TResult orElse(),
  }) {
    if (noPermission != null) {
      return noPermission();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_HealthDataUpdatedState value) healthDataUpdated,
    required TResult Function(_HealthPermisisonRequired value) noPermission,
  }) {
    return noPermission(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_HealthDataUpdatedState value)? healthDataUpdated,
    TResult? Function(_HealthPermisisonRequired value)? noPermission,
  }) {
    return noPermission?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_HealthDataUpdatedState value)? healthDataUpdated,
    TResult Function(_HealthPermisisonRequired value)? noPermission,
    required TResult orElse(),
  }) {
    if (noPermission != null) {
      return noPermission(this);
    }
    return orElse();
  }
}

abstract class _HealthPermisisonRequired implements ActivityTrackerState {
  const factory _HealthPermisisonRequired() = _$_HealthPermisisonRequired;
}
