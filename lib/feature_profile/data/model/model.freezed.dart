// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

InterestModel _$InterestModelFromJson(Map<String, dynamic> json) {
  return _InterestModel.fromJson(json);
}

/// @nodoc
mixin _$InterestModel {
  @JsonKey(name: 'doc_id')
  String get docId => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InterestModelCopyWith<InterestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InterestModelCopyWith<$Res> {
  factory $InterestModelCopyWith(
          InterestModel value, $Res Function(InterestModel) then) =
      _$InterestModelCopyWithImpl<$Res, InterestModel>;
  @useResult
  $Res call({@JsonKey(name: 'doc_id') String docId, String icon, String name});
}

/// @nodoc
class _$InterestModelCopyWithImpl<$Res, $Val extends InterestModel>
    implements $InterestModelCopyWith<$Res> {
  _$InterestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? docId = null,
    Object? icon = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      docId: null == docId
          ? _value.docId
          : docId // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InterestModelCopyWith<$Res>
    implements $InterestModelCopyWith<$Res> {
  factory _$$_InterestModelCopyWith(
          _$_InterestModel value, $Res Function(_$_InterestModel) then) =
      __$$_InterestModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'doc_id') String docId, String icon, String name});
}

/// @nodoc
class __$$_InterestModelCopyWithImpl<$Res>
    extends _$InterestModelCopyWithImpl<$Res, _$_InterestModel>
    implements _$$_InterestModelCopyWith<$Res> {
  __$$_InterestModelCopyWithImpl(
      _$_InterestModel _value, $Res Function(_$_InterestModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? docId = null,
    Object? icon = null,
    Object? name = null,
  }) {
    return _then(_$_InterestModel(
      docId: null == docId
          ? _value.docId
          : docId // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_InterestModel extends _InterestModel with DiagnosticableTreeMixin {
  _$_InterestModel(
      {@JsonKey(name: 'doc_id') required this.docId,
      required this.icon,
      required this.name})
      : super._();

  factory _$_InterestModel.fromJson(Map<String, dynamic> json) =>
      _$$_InterestModelFromJson(json);

  @override
  @JsonKey(name: 'doc_id')
  final String docId;
  @override
  final String icon;
  @override
  final String name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'InterestModel(docId: $docId, icon: $icon, name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'InterestModel'))
      ..add(DiagnosticsProperty('docId', docId))
      ..add(DiagnosticsProperty('icon', icon))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InterestModel &&
            (identical(other.docId, docId) || other.docId == docId) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, docId, icon, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InterestModelCopyWith<_$_InterestModel> get copyWith =>
      __$$_InterestModelCopyWithImpl<_$_InterestModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InterestModelToJson(
      this,
    );
  }
}

abstract class _InterestModel extends InterestModel {
  factory _InterestModel(
      {@JsonKey(name: 'doc_id') required final String docId,
      required final String icon,
      required final String name}) = _$_InterestModel;
  _InterestModel._() : super._();

  factory _InterestModel.fromJson(Map<String, dynamic> json) =
      _$_InterestModel.fromJson;

  @override
  @JsonKey(name: 'doc_id')
  String get docId;
  @override
  String get icon;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_InterestModelCopyWith<_$_InterestModel> get copyWith =>
      throw _privateConstructorUsedError;
}
