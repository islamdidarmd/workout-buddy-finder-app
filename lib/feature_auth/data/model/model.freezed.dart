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
  String get deviceToken => throw _privateConstructorUsedError;
  @JsonKey(fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  DateTime get registered => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get gender => throw _privateConstructorUsedError;
  @JsonKey(fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  DateTime? get birthdate => throw _privateConstructorUsedError;
  String get availability => throw _privateConstructorUsedError;
  int get nearbyDistance => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get profilePicture => throw _privateConstructorUsedError;
  double get lat => throw _privateConstructorUsedError;
  double get long => throw _privateConstructorUsedError;
  String get geoHash => throw _privateConstructorUsedError;
  List<String> get interestsList => throw _privateConstructorUsedError;

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
      String deviceToken,
      @JsonKey(fromJson: dateTimeFromJson, toJson: dateTimeToJson)
          DateTime registered,
      String name,
      String gender,
      @JsonKey(fromJson: dateTimeFromJson, toJson: dateTimeToJson)
          DateTime? birthdate,
      String availability,
      int nearbyDistance,
      String email,
      String profilePicture,
      double lat,
      double long,
      String geoHash,
      List<String> interestsList});
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
    Object? deviceToken = null,
    Object? registered = null,
    Object? name = null,
    Object? gender = null,
    Object? birthdate = freezed,
    Object? availability = null,
    Object? nearbyDistance = null,
    Object? email = null,
    Object? profilePicture = null,
    Object? lat = null,
    Object? long = null,
    Object? geoHash = null,
    Object? interestsList = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      deviceToken: null == deviceToken
          ? _value.deviceToken
          : deviceToken // ignore: cast_nullable_to_non_nullable
              as String,
      registered: null == registered
          ? _value.registered
          : registered // ignore: cast_nullable_to_non_nullable
              as DateTime,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      birthdate: freezed == birthdate
          ? _value.birthdate
          : birthdate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      availability: null == availability
          ? _value.availability
          : availability // ignore: cast_nullable_to_non_nullable
              as String,
      nearbyDistance: null == nearbyDistance
          ? _value.nearbyDistance
          : nearbyDistance // ignore: cast_nullable_to_non_nullable
              as int,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      profilePicture: null == profilePicture
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as String,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      long: null == long
          ? _value.long
          : long // ignore: cast_nullable_to_non_nullable
              as double,
      geoHash: null == geoHash
          ? _value.geoHash
          : geoHash // ignore: cast_nullable_to_non_nullable
              as String,
      interestsList: null == interestsList
          ? _value.interestsList
          : interestsList // ignore: cast_nullable_to_non_nullable
              as List<String>,
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
      String deviceToken,
      @JsonKey(fromJson: dateTimeFromJson, toJson: dateTimeToJson)
          DateTime registered,
      String name,
      String gender,
      @JsonKey(fromJson: dateTimeFromJson, toJson: dateTimeToJson)
          DateTime? birthdate,
      String availability,
      int nearbyDistance,
      String email,
      String profilePicture,
      double lat,
      double long,
      String geoHash,
      List<String> interestsList});
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
    Object? deviceToken = null,
    Object? registered = null,
    Object? name = null,
    Object? gender = null,
    Object? birthdate = freezed,
    Object? availability = null,
    Object? nearbyDistance = null,
    Object? email = null,
    Object? profilePicture = null,
    Object? lat = null,
    Object? long = null,
    Object? geoHash = null,
    Object? interestsList = null,
  }) {
    return _then(_$_AppUserModel(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      deviceToken: null == deviceToken
          ? _value.deviceToken
          : deviceToken // ignore: cast_nullable_to_non_nullable
              as String,
      registered: null == registered
          ? _value.registered
          : registered // ignore: cast_nullable_to_non_nullable
              as DateTime,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      birthdate: freezed == birthdate
          ? _value.birthdate
          : birthdate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      availability: null == availability
          ? _value.availability
          : availability // ignore: cast_nullable_to_non_nullable
              as String,
      nearbyDistance: null == nearbyDistance
          ? _value.nearbyDistance
          : nearbyDistance // ignore: cast_nullable_to_non_nullable
              as int,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      profilePicture: null == profilePicture
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as String,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      long: null == long
          ? _value.long
          : long // ignore: cast_nullable_to_non_nullable
              as double,
      geoHash: null == geoHash
          ? _value.geoHash
          : geoHash // ignore: cast_nullable_to_non_nullable
              as String,
      interestsList: null == interestsList
          ? _value._interestsList
          : interestsList // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AppUserModel extends _AppUserModel with DiagnosticableTreeMixin {
  _$_AppUserModel(
      {required this.userId,
      required this.deviceToken,
      @JsonKey(fromJson: dateTimeFromJson, toJson: dateTimeToJson)
          required this.registered,
      this.name = '',
      this.gender = 'male',
      @JsonKey(fromJson: dateTimeFromJson, toJson: dateTimeToJson)
          this.birthdate,
      this.availability = 'daily1hr',
      this.nearbyDistance = 10,
      this.email = '',
      this.profilePicture = '',
      this.lat = 0.0,
      this.long = 0.0,
      this.geoHash = "",
      final List<String> interestsList = const []})
      : _interestsList = interestsList,
        super._();

  factory _$_AppUserModel.fromJson(Map<String, dynamic> json) =>
      _$$_AppUserModelFromJson(json);

  @override
  final String userId;
  @override
  final String deviceToken;
  @override
  @JsonKey(fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  final DateTime registered;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String gender;
  @override
  @JsonKey(fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  final DateTime? birthdate;
  @override
  @JsonKey()
  final String availability;
  @override
  @JsonKey()
  final int nearbyDistance;
  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final String profilePicture;
  @override
  @JsonKey()
  final double lat;
  @override
  @JsonKey()
  final double long;
  @override
  @JsonKey()
  final String geoHash;
  final List<String> _interestsList;
  @override
  @JsonKey()
  List<String> get interestsList {
    if (_interestsList is EqualUnmodifiableListView) return _interestsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_interestsList);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppUserModel(userId: $userId, deviceToken: $deviceToken, registered: $registered, name: $name, gender: $gender, birthdate: $birthdate, availability: $availability, nearbyDistance: $nearbyDistance, email: $email, profilePicture: $profilePicture, lat: $lat, long: $long, geoHash: $geoHash, interestsList: $interestsList)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AppUserModel'))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('deviceToken', deviceToken))
      ..add(DiagnosticsProperty('registered', registered))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('gender', gender))
      ..add(DiagnosticsProperty('birthdate', birthdate))
      ..add(DiagnosticsProperty('availability', availability))
      ..add(DiagnosticsProperty('nearbyDistance', nearbyDistance))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('profilePicture', profilePicture))
      ..add(DiagnosticsProperty('lat', lat))
      ..add(DiagnosticsProperty('long', long))
      ..add(DiagnosticsProperty('geoHash', geoHash))
      ..add(DiagnosticsProperty('interestsList', interestsList));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppUserModel &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.deviceToken, deviceToken) ||
                other.deviceToken == deviceToken) &&
            (identical(other.registered, registered) ||
                other.registered == registered) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.birthdate, birthdate) ||
                other.birthdate == birthdate) &&
            (identical(other.availability, availability) ||
                other.availability == availability) &&
            (identical(other.nearbyDistance, nearbyDistance) ||
                other.nearbyDistance == nearbyDistance) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.profilePicture, profilePicture) ||
                other.profilePicture == profilePicture) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.long, long) || other.long == long) &&
            (identical(other.geoHash, geoHash) || other.geoHash == geoHash) &&
            const DeepCollectionEquality()
                .equals(other._interestsList, _interestsList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      userId,
      deviceToken,
      registered,
      name,
      gender,
      birthdate,
      availability,
      nearbyDistance,
      email,
      profilePicture,
      lat,
      long,
      geoHash,
      const DeepCollectionEquality().hash(_interestsList));

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
      required final String deviceToken,
      @JsonKey(fromJson: dateTimeFromJson, toJson: dateTimeToJson)
          required final DateTime registered,
      final String name,
      final String gender,
      @JsonKey(fromJson: dateTimeFromJson, toJson: dateTimeToJson)
          final DateTime? birthdate,
      final String availability,
      final int nearbyDistance,
      final String email,
      final String profilePicture,
      final double lat,
      final double long,
      final String geoHash,
      final List<String> interestsList}) = _$_AppUserModel;
  _AppUserModel._() : super._();

  factory _AppUserModel.fromJson(Map<String, dynamic> json) =
      _$_AppUserModel.fromJson;

  @override
  String get userId;
  @override
  String get deviceToken;
  @override
  @JsonKey(fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  DateTime get registered;
  @override
  String get name;
  @override
  String get gender;
  @override
  @JsonKey(fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  DateTime? get birthdate;
  @override
  String get availability;
  @override
  int get nearbyDistance;
  @override
  String get email;
  @override
  String get profilePicture;
  @override
  double get lat;
  @override
  double get long;
  @override
  String get geoHash;
  @override
  List<String> get interestsList;
  @override
  @JsonKey(ignore: true)
  _$$_AppUserModelCopyWith<_$_AppUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}
