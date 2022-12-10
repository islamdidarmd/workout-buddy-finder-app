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

AppUserModel _$AppUserModelFromJson(Map<String, dynamic> json) {
  return _AppUserModel.fromJson(json);
}

/// @nodoc
mixin _$AppUserModel {
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  DateTime get registered => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get profilePicture => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppUserModelCopyWith<AppUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppUserModelCopyWith<$Res> {
  factory $AppUserModelCopyWith(
          AppUserModel value, $Res Function(AppUserModel) then) =
      _$AppUserModelCopyWithImpl<$Res, AppUserModel>;
  @useResult
  $Res call(
      {String userId,
      @JsonKey(fromJson: dateTimeFromJson, toJson: dateTimeToJson)
          DateTime registered,
      String name,
      String email,
      String profilePicture});
}

/// @nodoc
class _$AppUserModelCopyWithImpl<$Res, $Val extends AppUserModel>
    implements $AppUserModelCopyWith<$Res> {
  _$AppUserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? registered = null,
    Object? name = null,
    Object? email = null,
    Object? profilePicture = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      registered: null == registered
          ? _value.registered
          : registered // ignore: cast_nullable_to_non_nullable
              as DateTime,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      profilePicture: null == profilePicture
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AppUserModelCopyWith<$Res>
    implements $AppUserModelCopyWith<$Res> {
  factory _$$_AppUserModelCopyWith(
          _$_AppUserModel value, $Res Function(_$_AppUserModel) then) =
      __$$_AppUserModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userId,
      @JsonKey(fromJson: dateTimeFromJson, toJson: dateTimeToJson)
          DateTime registered,
      String name,
      String email,
      String profilePicture});
}

/// @nodoc
class __$$_AppUserModelCopyWithImpl<$Res>
    extends _$AppUserModelCopyWithImpl<$Res, _$_AppUserModel>
    implements _$$_AppUserModelCopyWith<$Res> {
  __$$_AppUserModelCopyWithImpl(
      _$_AppUserModel _value, $Res Function(_$_AppUserModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? registered = null,
    Object? name = null,
    Object? email = null,
    Object? profilePicture = null,
  }) {
    return _then(_$_AppUserModel(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      registered: null == registered
          ? _value.registered
          : registered // ignore: cast_nullable_to_non_nullable
              as DateTime,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
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
class _$_AppUserModel extends _AppUserModel {
  _$_AppUserModel(
      {required this.userId,
      @JsonKey(fromJson: dateTimeFromJson, toJson: dateTimeToJson)
          required this.registered,
      this.name = '',
      this.email = '',
      this.profilePicture = ''})
      : super._();

  factory _$_AppUserModel.fromJson(Map<String, dynamic> json) =>
      _$$_AppUserModelFromJson(json);

  @override
  final String userId;
  @override
  @JsonKey(fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  final DateTime registered;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final String profilePicture;

  @override
  String toString() {
    return 'AppUserModel(userId: $userId, registered: $registered, name: $name, email: $email, profilePicture: $profilePicture)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppUserModel &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.registered, registered) ||
                other.registered == registered) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.profilePicture, profilePicture) ||
                other.profilePicture == profilePicture));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, userId, registered, name, email, profilePicture);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppUserModelCopyWith<_$_AppUserModel> get copyWith =>
      __$$_AppUserModelCopyWithImpl<_$_AppUserModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AppUserModelToJson(
      this,
    );
  }
}

abstract class _AppUserModel extends AppUserModel {
  factory _AppUserModel(
      {required final String userId,
      @JsonKey(fromJson: dateTimeFromJson, toJson: dateTimeToJson)
          required final DateTime registered,
      final String name,
      final String email,
      final String profilePicture}) = _$_AppUserModel;
  _AppUserModel._() : super._();

  factory _AppUserModel.fromJson(Map<String, dynamic> json) =
      _$_AppUserModel.fromJson;

  @override
  String get userId;
  @override
  @JsonKey(fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  DateTime get registered;
  @override
  String get name;
  @override
  String get email;
  @override
  String get profilePicture;
  @override
  @JsonKey(ignore: true)
  _$$_AppUserModelCopyWith<_$_AppUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}
