// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'entities.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Suggestion _$SuggestionFromJson(Map<String, dynamic> json) {
  return _Suggestion.fromJson(json);
}

/// @nodoc
mixin _$Suggestion {
  String get name => throw _privateConstructorUsedError;
  String get profilePicture => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SuggestionCopyWith<Suggestion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuggestionCopyWith<$Res> {
  factory $SuggestionCopyWith(
          Suggestion value, $Res Function(Suggestion) then) =
      _$SuggestionCopyWithImpl<$Res, Suggestion>;
  @useResult
  $Res call({String name, String profilePicture});
}

/// @nodoc
class _$SuggestionCopyWithImpl<$Res, $Val extends Suggestion>
    implements $SuggestionCopyWith<$Res> {
  _$SuggestionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? profilePicture = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      profilePicture: null == profilePicture
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SuggestionCopyWith<$Res>
    implements $SuggestionCopyWith<$Res> {
  factory _$$_SuggestionCopyWith(
          _$_Suggestion value, $Res Function(_$_Suggestion) then) =
      __$$_SuggestionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String profilePicture});
}

/// @nodoc
class __$$_SuggestionCopyWithImpl<$Res>
    extends _$SuggestionCopyWithImpl<$Res, _$_Suggestion>
    implements _$$_SuggestionCopyWith<$Res> {
  __$$_SuggestionCopyWithImpl(
      _$_Suggestion _value, $Res Function(_$_Suggestion) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? profilePicture = null,
  }) {
    return _then(_$_Suggestion(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      profilePicture: null == profilePicture
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Suggestion extends _Suggestion with DiagnosticableTreeMixin {
  _$_Suggestion({required this.name, required this.profilePicture}) : super._();

  factory _$_Suggestion.fromJson(Map<String, dynamic> json) =>
      _$$_SuggestionFromJson(json);

  @override
  final String name;
  @override
  final String profilePicture;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Suggestion(name: $name, profilePicture: $profilePicture)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Suggestion'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('profilePicture', profilePicture));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Suggestion &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.profilePicture, profilePicture) ||
                other.profilePicture == profilePicture));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, profilePicture);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SuggestionCopyWith<_$_Suggestion> get copyWith =>
      __$$_SuggestionCopyWithImpl<_$_Suggestion>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SuggestionToJson(
      this,
    );
  }
}

abstract class _Suggestion extends Suggestion {
  factory _Suggestion(
      {required final String name,
      required final String profilePicture}) = _$_Suggestion;
  _Suggestion._() : super._();

  factory _Suggestion.fromJson(Map<String, dynamic> json) =
      _$_Suggestion.fromJson;

  @override
  String get name;
  @override
  String get profilePicture;
  @override
  @JsonKey(ignore: true)
  _$$_SuggestionCopyWith<_$_Suggestion> get copyWith =>
      throw _privateConstructorUsedError;
}
