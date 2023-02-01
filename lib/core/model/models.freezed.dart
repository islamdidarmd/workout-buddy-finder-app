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

Interest _$InterestFromJson(Map<String, dynamic> json) {
  return _Interest.fromJson(json);
}

/// @nodoc
mixin _$Interest {
  @JsonKey(name: 'doc_id')
  String get id => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InterestCopyWith<Interest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InterestCopyWith<$Res> {
  factory $InterestCopyWith(Interest value, $Res Function(Interest) then) =
      _$InterestCopyWithImpl<$Res, Interest>;
  @useResult
  $Res call({@JsonKey(name: 'doc_id') String id, String icon, String name});
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
  $Res call({@JsonKey(name: 'doc_id') String id, String icon, String name});
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
@JsonSerializable()
class _$_Interest with DiagnosticableTreeMixin implements _Interest {
  _$_Interest(
      {@JsonKey(name: 'doc_id') required this.id,
      required this.icon,
      required this.name});

  factory _$_Interest.fromJson(Map<String, dynamic> json) =>
      _$$_InterestFromJson(json);

  @override
  @JsonKey(name: 'doc_id')
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

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, icon, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InterestCopyWith<_$_Interest> get copyWith =>
      __$$_InterestCopyWithImpl<_$_Interest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InterestToJson(
      this,
    );
  }
}

abstract class _Interest implements Interest {
  factory _Interest(
      {@JsonKey(name: 'doc_id') required final String id,
      required final String icon,
      required final String name}) = _$_Interest;

  factory _Interest.fromJson(Map<String, dynamic> json) = _$_Interest.fromJson;

  @override
  @JsonKey(name: 'doc_id')
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

AppUser _$AppUserFromJson(Map<String, dynamic> json) {
  return _AppUser.fromJson(json);
}

/// @nodoc
mixin _$AppUser {
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(
      fromJson: DateTimeConverter.dateTimeFromJson,
      toJson: DateTimeConverter.dateTimeToJson)
  DateTime? get registered => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'gender')
  String get gender => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'birthdate',
      fromJson: DateTimeConverter.dateTimeFromJson,
      toJson: DateTimeConverter.dateTimeToJson)
  DateTime? get birthdate => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'last_seen',
      fromJson: DateTimeConverter.dateTimeFromJson,
      toJson: DateTimeConverter.dateTimeToJson)
  DateTime? get lastSeen => throw _privateConstructorUsedError;
  @JsonKey(name: 'availability')
  String get availability => throw _privateConstructorUsedError;
  @JsonKey(name: 'nearbyDistance')
  int get nearbyDistance => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'profilePicture')
  String get profilePicture => throw _privateConstructorUsedError;
  @JsonKey(name: 'lat')
  double get lat => throw _privateConstructorUsedError;
  @JsonKey(name: 'long')
  double get long => throw _privateConstructorUsedError;
  @JsonKey(name: 'geoHash')
  String get geoHash => throw _privateConstructorUsedError;
  @JsonKey(name: 'interestsList')
  List<String> get interestList => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_hidden')
  bool get isHidden => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
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
      @JsonKey(fromJson: DateTimeConverter.dateTimeFromJson, toJson: DateTimeConverter.dateTimeToJson)
          DateTime? registered,
      @JsonKey(name: 'name')
          String name,
      @JsonKey(name: 'gender')
          String gender,
      @JsonKey(name: 'birthdate', fromJson: DateTimeConverter.dateTimeFromJson, toJson: DateTimeConverter.dateTimeToJson)
          DateTime? birthdate,
      @JsonKey(name: 'last_seen', fromJson: DateTimeConverter.dateTimeFromJson, toJson: DateTimeConverter.dateTimeToJson)
          DateTime? lastSeen,
      @JsonKey(name: 'availability')
          String availability,
      @JsonKey(name: 'nearbyDistance')
          int nearbyDistance,
      @JsonKey(name: 'email')
          String email,
      @JsonKey(name: 'profilePicture')
          String profilePicture,
      @JsonKey(name: 'lat')
          double lat,
      @JsonKey(name: 'long')
          double long,
      @JsonKey(name: 'geoHash')
          String geoHash,
      @JsonKey(name: 'interestsList')
          List<String> interestList,
      @JsonKey(name: 'is_hidden')
          bool isHidden});
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
    Object? registered = freezed,
    Object? name = null,
    Object? gender = null,
    Object? birthdate = freezed,
    Object? lastSeen = freezed,
    Object? availability = null,
    Object? nearbyDistance = null,
    Object? email = null,
    Object? profilePicture = null,
    Object? lat = null,
    Object? long = null,
    Object? geoHash = null,
    Object? interestList = null,
    Object? isHidden = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      registered: freezed == registered
          ? _value.registered
          : registered // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
      lastSeen: freezed == lastSeen
          ? _value.lastSeen
          : lastSeen // ignore: cast_nullable_to_non_nullable
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
      interestList: null == interestList
          ? _value.interestList
          : interestList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isHidden: null == isHidden
          ? _value.isHidden
          : isHidden // ignore: cast_nullable_to_non_nullable
              as bool,
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
      @JsonKey(fromJson: DateTimeConverter.dateTimeFromJson, toJson: DateTimeConverter.dateTimeToJson)
          DateTime? registered,
      @JsonKey(name: 'name')
          String name,
      @JsonKey(name: 'gender')
          String gender,
      @JsonKey(name: 'birthdate', fromJson: DateTimeConverter.dateTimeFromJson, toJson: DateTimeConverter.dateTimeToJson)
          DateTime? birthdate,
      @JsonKey(name: 'last_seen', fromJson: DateTimeConverter.dateTimeFromJson, toJson: DateTimeConverter.dateTimeToJson)
          DateTime? lastSeen,
      @JsonKey(name: 'availability')
          String availability,
      @JsonKey(name: 'nearbyDistance')
          int nearbyDistance,
      @JsonKey(name: 'email')
          String email,
      @JsonKey(name: 'profilePicture')
          String profilePicture,
      @JsonKey(name: 'lat')
          double lat,
      @JsonKey(name: 'long')
          double long,
      @JsonKey(name: 'geoHash')
          String geoHash,
      @JsonKey(name: 'interestsList')
          List<String> interestList,
      @JsonKey(name: 'is_hidden')
          bool isHidden});
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
    Object? registered = freezed,
    Object? name = null,
    Object? gender = null,
    Object? birthdate = freezed,
    Object? lastSeen = freezed,
    Object? availability = null,
    Object? nearbyDistance = null,
    Object? email = null,
    Object? profilePicture = null,
    Object? lat = null,
    Object? long = null,
    Object? geoHash = null,
    Object? interestList = null,
    Object? isHidden = null,
  }) {
    return _then(_$_AppUser(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      registered: freezed == registered
          ? _value.registered
          : registered // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
      lastSeen: freezed == lastSeen
          ? _value.lastSeen
          : lastSeen // ignore: cast_nullable_to_non_nullable
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
      interestList: null == interestList
          ? _value._interestList
          : interestList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isHidden: null == isHidden
          ? _value.isHidden
          : isHidden // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AppUser extends _AppUser with DiagnosticableTreeMixin {
  const _$_AppUser(
      {required this.userId,
      @JsonKey(fromJson: DateTimeConverter.dateTimeFromJson, toJson: DateTimeConverter.dateTimeToJson)
          required this.registered,
      @JsonKey(name: 'name')
          this.name = '',
      @JsonKey(name: 'gender')
          this.gender = '',
      @JsonKey(name: 'birthdate', fromJson: DateTimeConverter.dateTimeFromJson, toJson: DateTimeConverter.dateTimeToJson)
          this.birthdate,
      @JsonKey(name: 'last_seen', fromJson: DateTimeConverter.dateTimeFromJson, toJson: DateTimeConverter.dateTimeToJson)
          this.lastSeen,
      @JsonKey(name: 'availability')
          this.availability = 'daily1hr',
      @JsonKey(name: 'nearbyDistance')
          this.nearbyDistance = 10,
      @JsonKey(name: 'email')
          this.email = '',
      @JsonKey(name: 'profilePicture')
          this.profilePicture = '',
      @JsonKey(name: 'lat')
          this.lat = 0.0,
      @JsonKey(name: 'long')
          this.long = 0.0,
      @JsonKey(name: 'geoHash')
          this.geoHash = "",
      @JsonKey(name: 'interestsList')
          final List<String> interestList = const [],
      @JsonKey(name: 'is_hidden')
          this.isHidden = false})
      : _interestList = interestList,
        super._();

  factory _$_AppUser.fromJson(Map<String, dynamic> json) =>
      _$$_AppUserFromJson(json);

  @override
  final String userId;
  @override
  @JsonKey(
      fromJson: DateTimeConverter.dateTimeFromJson,
      toJson: DateTimeConverter.dateTimeToJson)
  final DateTime? registered;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'gender')
  final String gender;
  @override
  @JsonKey(
      name: 'birthdate',
      fromJson: DateTimeConverter.dateTimeFromJson,
      toJson: DateTimeConverter.dateTimeToJson)
  final DateTime? birthdate;
  @override
  @JsonKey(
      name: 'last_seen',
      fromJson: DateTimeConverter.dateTimeFromJson,
      toJson: DateTimeConverter.dateTimeToJson)
  final DateTime? lastSeen;
  @override
  @JsonKey(name: 'availability')
  final String availability;
  @override
  @JsonKey(name: 'nearbyDistance')
  final int nearbyDistance;
  @override
  @JsonKey(name: 'email')
  final String email;
  @override
  @JsonKey(name: 'profilePicture')
  final String profilePicture;
  @override
  @JsonKey(name: 'lat')
  final double lat;
  @override
  @JsonKey(name: 'long')
  final double long;
  @override
  @JsonKey(name: 'geoHash')
  final String geoHash;
  final List<String> _interestList;
  @override
  @JsonKey(name: 'interestsList')
  List<String> get interestList {
    if (_interestList is EqualUnmodifiableListView) return _interestList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_interestList);
  }

  @override
  @JsonKey(name: 'is_hidden')
  final bool isHidden;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppUser(userId: $userId, registered: $registered, name: $name, gender: $gender, birthdate: $birthdate, lastSeen: $lastSeen, availability: $availability, nearbyDistance: $nearbyDistance, email: $email, profilePicture: $profilePicture, lat: $lat, long: $long, geoHash: $geoHash, interestList: $interestList, isHidden: $isHidden)';
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
      ..add(DiagnosticsProperty('lastSeen', lastSeen))
      ..add(DiagnosticsProperty('availability', availability))
      ..add(DiagnosticsProperty('nearbyDistance', nearbyDistance))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('profilePicture', profilePicture))
      ..add(DiagnosticsProperty('lat', lat))
      ..add(DiagnosticsProperty('long', long))
      ..add(DiagnosticsProperty('geoHash', geoHash))
      ..add(DiagnosticsProperty('interestList', interestList))
      ..add(DiagnosticsProperty('isHidden', isHidden));
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
            (identical(other.lastSeen, lastSeen) ||
                other.lastSeen == lastSeen) &&
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
                .equals(other._interestList, _interestList) &&
            (identical(other.isHidden, isHidden) ||
                other.isHidden == isHidden));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      userId,
      registered,
      name,
      gender,
      birthdate,
      lastSeen,
      availability,
      nearbyDistance,
      email,
      profilePicture,
      lat,
      long,
      geoHash,
      const DeepCollectionEquality().hash(_interestList),
      isHidden);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppUserCopyWith<_$_AppUser> get copyWith =>
      __$$_AppUserCopyWithImpl<_$_AppUser>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AppUserToJson(
      this,
    );
  }
}

abstract class _AppUser extends AppUser {
  const factory _AppUser(
      {required final String userId,
      @JsonKey(fromJson: DateTimeConverter.dateTimeFromJson, toJson: DateTimeConverter.dateTimeToJson)
          required final DateTime? registered,
      @JsonKey(name: 'name')
          final String name,
      @JsonKey(name: 'gender')
          final String gender,
      @JsonKey(name: 'birthdate', fromJson: DateTimeConverter.dateTimeFromJson, toJson: DateTimeConverter.dateTimeToJson)
          final DateTime? birthdate,
      @JsonKey(name: 'last_seen', fromJson: DateTimeConverter.dateTimeFromJson, toJson: DateTimeConverter.dateTimeToJson)
          final DateTime? lastSeen,
      @JsonKey(name: 'availability')
          final String availability,
      @JsonKey(name: 'nearbyDistance')
          final int nearbyDistance,
      @JsonKey(name: 'email')
          final String email,
      @JsonKey(name: 'profilePicture')
          final String profilePicture,
      @JsonKey(name: 'lat')
          final double lat,
      @JsonKey(name: 'long')
          final double long,
      @JsonKey(name: 'geoHash')
          final String geoHash,
      @JsonKey(name: 'interestsList')
          final List<String> interestList,
      @JsonKey(name: 'is_hidden')
          final bool isHidden}) = _$_AppUser;
  const _AppUser._() : super._();

  factory _AppUser.fromJson(Map<String, dynamic> json) = _$_AppUser.fromJson;

  @override
  String get userId;
  @override
  @JsonKey(
      fromJson: DateTimeConverter.dateTimeFromJson,
      toJson: DateTimeConverter.dateTimeToJson)
  DateTime? get registered;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'gender')
  String get gender;
  @override
  @JsonKey(
      name: 'birthdate',
      fromJson: DateTimeConverter.dateTimeFromJson,
      toJson: DateTimeConverter.dateTimeToJson)
  DateTime? get birthdate;
  @override
  @JsonKey(
      name: 'last_seen',
      fromJson: DateTimeConverter.dateTimeFromJson,
      toJson: DateTimeConverter.dateTimeToJson)
  DateTime? get lastSeen;
  @override
  @JsonKey(name: 'availability')
  String get availability;
  @override
  @JsonKey(name: 'nearbyDistance')
  int get nearbyDistance;
  @override
  @JsonKey(name: 'email')
  String get email;
  @override
  @JsonKey(name: 'profilePicture')
  String get profilePicture;
  @override
  @JsonKey(name: 'lat')
  double get lat;
  @override
  @JsonKey(name: 'long')
  double get long;
  @override
  @JsonKey(name: 'geoHash')
  String get geoHash;
  @override
  @JsonKey(name: 'interestsList')
  List<String> get interestList;
  @override
  @JsonKey(name: 'is_hidden')
  bool get isHidden;
  @override
  @JsonKey(ignore: true)
  _$$_AppUserCopyWith<_$_AppUser> get copyWith =>
      throw _privateConstructorUsedError;
}
