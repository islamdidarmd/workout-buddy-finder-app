// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Interest {
  String get id => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InterestCopyWith<Interest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InterestCopyWith<$Res> {
  factory $InterestCopyWith(Interest value, $Res Function(Interest) then) =
      _$InterestCopyWithImpl<$Res, Interest>;
  @useResult
  $Res call({String id, String icon, String name});
}

/// @nodoc
class _$InterestCopyWithImpl<$Res, $Val extends Interest>
    implements $InterestCopyWith<$Res> {
  _$InterestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? icon = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_InterestCopyWith<$Res> implements $InterestCopyWith<$Res> {
  factory _$$_InterestCopyWith(
          _$_Interest value, $Res Function(_$_Interest) then) =
      __$$_InterestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String icon, String name});
}

/// @nodoc
class __$$_InterestCopyWithImpl<$Res>
    extends _$InterestCopyWithImpl<$Res, _$_Interest>
    implements _$$_InterestCopyWith<$Res> {
  __$$_InterestCopyWithImpl(
      _$_Interest _value, $Res Function(_$_Interest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? icon = null,
    Object? name = null,
  }) {
    return _then(_$_Interest(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
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

class _$_Interest with DiagnosticableTreeMixin implements _Interest {
  _$_Interest({required this.id, required this.icon, required this.name});

  @override
  final String id;
  @override
  final String icon;
  @override
  final String name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Interest(id: $id, icon: $icon, name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Interest'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('icon', icon))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Interest &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, icon, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InterestCopyWith<_$_Interest> get copyWith =>
      __$$_InterestCopyWithImpl<_$_Interest>(this, _$identity);
}

abstract class _Interest implements Interest {
  factory _Interest(
      {required final String id,
      required final String icon,
      required final String name}) = _$_Interest;

  @override
  String get id;
  @override
  String get icon;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_InterestCopyWith<_$_Interest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AppUser {
  String get userId => throw _privateConstructorUsedError;
  DateTime get registered => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get gender => throw _privateConstructorUsedError;
  DateTime get birthdate => throw _privateConstructorUsedError;
  String get availability => throw _privateConstructorUsedError;
  int get nearbyDistance => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get profilePicture => throw _privateConstructorUsedError;
  double get lat => throw _privateConstructorUsedError;
  double get long => throw _privateConstructorUsedError;
  String get geoHash => throw _privateConstructorUsedError;
  List<Interest> get interestList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppUserCopyWith<AppUser> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppUserCopyWith<$Res> {
  factory $AppUserCopyWith(AppUser value, $Res Function(AppUser) then) =
      _$AppUserCopyWithImpl<$Res, AppUser>;
  @useResult
  $Res call(
      {String userId,
      DateTime registered,
      String name,
      String gender,
      DateTime birthdate,
      String availability,
      int nearbyDistance,
      String email,
      String profilePicture,
      double lat,
      double long,
      String geoHash,
      List<Interest> interestList});
}

/// @nodoc
class _$AppUserCopyWithImpl<$Res, $Val extends AppUser>
    implements $AppUserCopyWith<$Res> {
  _$AppUserCopyWithImpl(this._value, this._then);

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
    Object? gender = null,
    Object? birthdate = null,
    Object? availability = null,
    Object? nearbyDistance = null,
    Object? email = null,
    Object? profilePicture = null,
    Object? lat = null,
    Object? long = null,
    Object? geoHash = null,
    Object? interestList = null,
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
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      birthdate: null == birthdate
          ? _value.birthdate
          : birthdate // ignore: cast_nullable_to_non_nullable
              as DateTime,
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
      interestList: null == interestList
          ? _value.interestList
          : interestList // ignore: cast_nullable_to_non_nullable
              as List<Interest>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AppUserCopyWith<$Res> implements $AppUserCopyWith<$Res> {
  factory _$$_AppUserCopyWith(
          _$_AppUser value, $Res Function(_$_AppUser) then) =
      __$$_AppUserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userId,
      DateTime registered,
      String name,
      String gender,
      DateTime birthdate,
      String availability,
      int nearbyDistance,
      String email,
      String profilePicture,
      double lat,
      double long,
      String geoHash,
      List<Interest> interestList});
}

/// @nodoc
class __$$_AppUserCopyWithImpl<$Res>
    extends _$AppUserCopyWithImpl<$Res, _$_AppUser>
    implements _$$_AppUserCopyWith<$Res> {
  __$$_AppUserCopyWithImpl(_$_AppUser _value, $Res Function(_$_AppUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? registered = null,
    Object? name = null,
    Object? gender = null,
    Object? birthdate = null,
    Object? availability = null,
    Object? nearbyDistance = null,
    Object? email = null,
    Object? profilePicture = null,
    Object? lat = null,
    Object? long = null,
    Object? geoHash = null,
    Object? interestList = null,
  }) {
    return _then(_$_AppUser(
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
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      birthdate: null == birthdate
          ? _value.birthdate
          : birthdate // ignore: cast_nullable_to_non_nullable
              as DateTime,
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
      interestList: null == interestList
          ? _value._interestList
          : interestList // ignore: cast_nullable_to_non_nullable
              as List<Interest>,
    ));
  }
}

/// @nodoc

class _$_AppUser extends _AppUser with DiagnosticableTreeMixin {
  const _$_AppUser(
      {required this.userId,
      required this.registered,
      required this.name,
      required this.gender,
      required this.birthdate,
      required this.availability,
      required this.nearbyDistance,
      required this.email,
      required this.profilePicture,
      required this.lat,
      required this.long,
      required this.geoHash,
      required final List<Interest> interestList})
      : _interestList = interestList,
        super._();

  @override
  final String userId;
  @override
  final DateTime registered;
  @override
  final String name;
  @override
  final String gender;
  @override
  final DateTime birthdate;
  @override
  final String availability;
  @override
  final int nearbyDistance;
  @override
  final String email;
  @override
  final String profilePicture;
  @override
  final double lat;
  @override
  final double long;
  @override
  final String geoHash;
  final List<Interest> _interestList;
  @override
  List<Interest> get interestList {
    if (_interestList is EqualUnmodifiableListView) return _interestList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_interestList);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppUser(userId: $userId, registered: $registered, name: $name, gender: $gender, birthdate: $birthdate, availability: $availability, nearbyDistance: $nearbyDistance, email: $email, profilePicture: $profilePicture, lat: $lat, long: $long, geoHash: $geoHash, interestList: $interestList)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AppUser'))
      ..add(DiagnosticsProperty('userId', userId))
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
      ..add(DiagnosticsProperty('interestList', interestList));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppUser &&
            (identical(other.userId, userId) || other.userId == userId) &&
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
                .equals(other._interestList, _interestList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      userId,
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
      const DeepCollectionEquality().hash(_interestList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppUserCopyWith<_$_AppUser> get copyWith =>
      __$$_AppUserCopyWithImpl<_$_AppUser>(this, _$identity);
}

abstract class _AppUser extends AppUser {
  const factory _AppUser(
      {required final String userId,
      required final DateTime registered,
      required final String name,
      required final String gender,
      required final DateTime birthdate,
      required final String availability,
      required final int nearbyDistance,
      required final String email,
      required final String profilePicture,
      required final double lat,
      required final double long,
      required final String geoHash,
      required final List<Interest> interestList}) = _$_AppUser;
  const _AppUser._() : super._();

  @override
  String get userId;
  @override
  DateTime get registered;
  @override
  String get name;
  @override
  String get gender;
  @override
  DateTime get birthdate;
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
  List<Interest> get interestList;
  @override
  @JsonKey(ignore: true)
  _$$_AppUserCopyWith<_$_AppUser> get copyWith =>
      throw _privateConstructorUsedError;
}
