// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUserProfile,
    required TResult Function(AppUser appUser) loadInterests,
    required TResult Function(AppUser appUser, InterestViewModel interest)
        addInterest,
    required TResult Function(AppUser appUser, InterestViewModel interest)
        removeInterest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUserProfile,
    TResult? Function(AppUser appUser)? loadInterests,
    TResult? Function(AppUser appUser, InterestViewModel interest)? addInterest,
    TResult? Function(AppUser appUser, InterestViewModel interest)?
        removeInterest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUserProfile,
    TResult Function(AppUser appUser)? loadInterests,
    TResult Function(AppUser appUser, InterestViewModel interest)? addInterest,
    TResult Function(AppUser appUser, InterestViewModel interest)?
        removeInterest,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserProfileEvent value) getUserProfile,
    required TResult Function(_InterestsEvent value) loadInterests,
    required TResult Function(_AddInterestEvent value) addInterest,
    required TResult Function(_RemoveInterestEvent value) removeInterest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserProfileEvent value)? getUserProfile,
    TResult? Function(_InterestsEvent value)? loadInterests,
    TResult? Function(_AddInterestEvent value)? addInterest,
    TResult? Function(_RemoveInterestEvent value)? removeInterest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserProfileEvent value)? getUserProfile,
    TResult Function(_InterestsEvent value)? loadInterests,
    TResult Function(_AddInterestEvent value)? addInterest,
    TResult Function(_RemoveInterestEvent value)? removeInterest,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEventCopyWith<$Res> {
  factory $ProfileEventCopyWith(
          ProfileEvent value, $Res Function(ProfileEvent) then) =
      _$ProfileEventCopyWithImpl<$Res, ProfileEvent>;
}

/// @nodoc
class _$ProfileEventCopyWithImpl<$Res, $Val extends ProfileEvent>
    implements $ProfileEventCopyWith<$Res> {
  _$ProfileEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_UserProfileEventCopyWith<$Res> {
  factory _$$_UserProfileEventCopyWith(
          _$_UserProfileEvent value, $Res Function(_$_UserProfileEvent) then) =
      __$$_UserProfileEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UserProfileEventCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$_UserProfileEvent>
    implements _$$_UserProfileEventCopyWith<$Res> {
  __$$_UserProfileEventCopyWithImpl(
      _$_UserProfileEvent _value, $Res Function(_$_UserProfileEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_UserProfileEvent
    with DiagnosticableTreeMixin
    implements _UserProfileEvent {
  const _$_UserProfileEvent();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProfileEvent.getUserProfile()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'ProfileEvent.getUserProfile'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UserProfileEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUserProfile,
    required TResult Function(AppUser appUser) loadInterests,
    required TResult Function(AppUser appUser, InterestViewModel interest)
        addInterest,
    required TResult Function(AppUser appUser, InterestViewModel interest)
        removeInterest,
  }) {
    return getUserProfile();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUserProfile,
    TResult? Function(AppUser appUser)? loadInterests,
    TResult? Function(AppUser appUser, InterestViewModel interest)? addInterest,
    TResult? Function(AppUser appUser, InterestViewModel interest)?
        removeInterest,
  }) {
    return getUserProfile?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUserProfile,
    TResult Function(AppUser appUser)? loadInterests,
    TResult Function(AppUser appUser, InterestViewModel interest)? addInterest,
    TResult Function(AppUser appUser, InterestViewModel interest)?
        removeInterest,
    required TResult orElse(),
  }) {
    if (getUserProfile != null) {
      return getUserProfile();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserProfileEvent value) getUserProfile,
    required TResult Function(_InterestsEvent value) loadInterests,
    required TResult Function(_AddInterestEvent value) addInterest,
    required TResult Function(_RemoveInterestEvent value) removeInterest,
  }) {
    return getUserProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserProfileEvent value)? getUserProfile,
    TResult? Function(_InterestsEvent value)? loadInterests,
    TResult? Function(_AddInterestEvent value)? addInterest,
    TResult? Function(_RemoveInterestEvent value)? removeInterest,
  }) {
    return getUserProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserProfileEvent value)? getUserProfile,
    TResult Function(_InterestsEvent value)? loadInterests,
    TResult Function(_AddInterestEvent value)? addInterest,
    TResult Function(_RemoveInterestEvent value)? removeInterest,
    required TResult orElse(),
  }) {
    if (getUserProfile != null) {
      return getUserProfile(this);
    }
    return orElse();
  }
}

abstract class _UserProfileEvent implements ProfileEvent {
  const factory _UserProfileEvent() = _$_UserProfileEvent;
}

/// @nodoc
abstract class _$$_InterestsEventCopyWith<$Res> {
  factory _$$_InterestsEventCopyWith(
          _$_InterestsEvent value, $Res Function(_$_InterestsEvent) then) =
      __$$_InterestsEventCopyWithImpl<$Res>;
  @useResult
  $Res call({AppUser appUser});

  $AppUserCopyWith<$Res> get appUser;
}

/// @nodoc
class __$$_InterestsEventCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$_InterestsEvent>
    implements _$$_InterestsEventCopyWith<$Res> {
  __$$_InterestsEventCopyWithImpl(
      _$_InterestsEvent _value, $Res Function(_$_InterestsEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appUser = null,
  }) {
    return _then(_$_InterestsEvent(
      null == appUser
          ? _value.appUser
          : appUser // ignore: cast_nullable_to_non_nullable
              as AppUser,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AppUserCopyWith<$Res> get appUser {
    return $AppUserCopyWith<$Res>(_value.appUser, (value) {
      return _then(_value.copyWith(appUser: value));
    });
  }
}

/// @nodoc

class _$_InterestsEvent
    with DiagnosticableTreeMixin
    implements _InterestsEvent {
  const _$_InterestsEvent(this.appUser);

  @override
  final AppUser appUser;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProfileEvent.loadInterests(appUser: $appUser)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProfileEvent.loadInterests'))
      ..add(DiagnosticsProperty('appUser', appUser));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InterestsEvent &&
            (identical(other.appUser, appUser) || other.appUser == appUser));
  }

  @override
  int get hashCode => Object.hash(runtimeType, appUser);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InterestsEventCopyWith<_$_InterestsEvent> get copyWith =>
      __$$_InterestsEventCopyWithImpl<_$_InterestsEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUserProfile,
    required TResult Function(AppUser appUser) loadInterests,
    required TResult Function(AppUser appUser, InterestViewModel interest)
        addInterest,
    required TResult Function(AppUser appUser, InterestViewModel interest)
        removeInterest,
  }) {
    return loadInterests(appUser);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUserProfile,
    TResult? Function(AppUser appUser)? loadInterests,
    TResult? Function(AppUser appUser, InterestViewModel interest)? addInterest,
    TResult? Function(AppUser appUser, InterestViewModel interest)?
        removeInterest,
  }) {
    return loadInterests?.call(appUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUserProfile,
    TResult Function(AppUser appUser)? loadInterests,
    TResult Function(AppUser appUser, InterestViewModel interest)? addInterest,
    TResult Function(AppUser appUser, InterestViewModel interest)?
        removeInterest,
    required TResult orElse(),
  }) {
    if (loadInterests != null) {
      return loadInterests(appUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserProfileEvent value) getUserProfile,
    required TResult Function(_InterestsEvent value) loadInterests,
    required TResult Function(_AddInterestEvent value) addInterest,
    required TResult Function(_RemoveInterestEvent value) removeInterest,
  }) {
    return loadInterests(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserProfileEvent value)? getUserProfile,
    TResult? Function(_InterestsEvent value)? loadInterests,
    TResult? Function(_AddInterestEvent value)? addInterest,
    TResult? Function(_RemoveInterestEvent value)? removeInterest,
  }) {
    return loadInterests?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserProfileEvent value)? getUserProfile,
    TResult Function(_InterestsEvent value)? loadInterests,
    TResult Function(_AddInterestEvent value)? addInterest,
    TResult Function(_RemoveInterestEvent value)? removeInterest,
    required TResult orElse(),
  }) {
    if (loadInterests != null) {
      return loadInterests(this);
    }
    return orElse();
  }
}

abstract class _InterestsEvent implements ProfileEvent {
  const factory _InterestsEvent(final AppUser appUser) = _$_InterestsEvent;

  AppUser get appUser;
  @JsonKey(ignore: true)
  _$$_InterestsEventCopyWith<_$_InterestsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AddInterestEventCopyWith<$Res> {
  factory _$$_AddInterestEventCopyWith(
          _$_AddInterestEvent value, $Res Function(_$_AddInterestEvent) then) =
      __$$_AddInterestEventCopyWithImpl<$Res>;
  @useResult
  $Res call({AppUser appUser, InterestViewModel interest});

  $AppUserCopyWith<$Res> get appUser;
  $InterestViewModelCopyWith<$Res> get interest;
}

/// @nodoc
class __$$_AddInterestEventCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$_AddInterestEvent>
    implements _$$_AddInterestEventCopyWith<$Res> {
  __$$_AddInterestEventCopyWithImpl(
      _$_AddInterestEvent _value, $Res Function(_$_AddInterestEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appUser = null,
    Object? interest = null,
  }) {
    return _then(_$_AddInterestEvent(
      null == appUser
          ? _value.appUser
          : appUser // ignore: cast_nullable_to_non_nullable
              as AppUser,
      null == interest
          ? _value.interest
          : interest // ignore: cast_nullable_to_non_nullable
              as InterestViewModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AppUserCopyWith<$Res> get appUser {
    return $AppUserCopyWith<$Res>(_value.appUser, (value) {
      return _then(_value.copyWith(appUser: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $InterestViewModelCopyWith<$Res> get interest {
    return $InterestViewModelCopyWith<$Res>(_value.interest, (value) {
      return _then(_value.copyWith(interest: value));
    });
  }
}

/// @nodoc

class _$_AddInterestEvent
    with DiagnosticableTreeMixin
    implements _AddInterestEvent {
  const _$_AddInterestEvent(this.appUser, this.interest);

  @override
  final AppUser appUser;
  @override
  final InterestViewModel interest;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProfileEvent.addInterest(appUser: $appUser, interest: $interest)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProfileEvent.addInterest'))
      ..add(DiagnosticsProperty('appUser', appUser))
      ..add(DiagnosticsProperty('interest', interest));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddInterestEvent &&
            (identical(other.appUser, appUser) || other.appUser == appUser) &&
            (identical(other.interest, interest) ||
                other.interest == interest));
  }

  @override
  int get hashCode => Object.hash(runtimeType, appUser, interest);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddInterestEventCopyWith<_$_AddInterestEvent> get copyWith =>
      __$$_AddInterestEventCopyWithImpl<_$_AddInterestEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUserProfile,
    required TResult Function(AppUser appUser) loadInterests,
    required TResult Function(AppUser appUser, InterestViewModel interest)
        addInterest,
    required TResult Function(AppUser appUser, InterestViewModel interest)
        removeInterest,
  }) {
    return addInterest(appUser, interest);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUserProfile,
    TResult? Function(AppUser appUser)? loadInterests,
    TResult? Function(AppUser appUser, InterestViewModel interest)? addInterest,
    TResult? Function(AppUser appUser, InterestViewModel interest)?
        removeInterest,
  }) {
    return addInterest?.call(appUser, interest);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUserProfile,
    TResult Function(AppUser appUser)? loadInterests,
    TResult Function(AppUser appUser, InterestViewModel interest)? addInterest,
    TResult Function(AppUser appUser, InterestViewModel interest)?
        removeInterest,
    required TResult orElse(),
  }) {
    if (addInterest != null) {
      return addInterest(appUser, interest);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserProfileEvent value) getUserProfile,
    required TResult Function(_InterestsEvent value) loadInterests,
    required TResult Function(_AddInterestEvent value) addInterest,
    required TResult Function(_RemoveInterestEvent value) removeInterest,
  }) {
    return addInterest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserProfileEvent value)? getUserProfile,
    TResult? Function(_InterestsEvent value)? loadInterests,
    TResult? Function(_AddInterestEvent value)? addInterest,
    TResult? Function(_RemoveInterestEvent value)? removeInterest,
  }) {
    return addInterest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserProfileEvent value)? getUserProfile,
    TResult Function(_InterestsEvent value)? loadInterests,
    TResult Function(_AddInterestEvent value)? addInterest,
    TResult Function(_RemoveInterestEvent value)? removeInterest,
    required TResult orElse(),
  }) {
    if (addInterest != null) {
      return addInterest(this);
    }
    return orElse();
  }
}

abstract class _AddInterestEvent implements ProfileEvent {
  const factory _AddInterestEvent(
          final AppUser appUser, final InterestViewModel interest) =
      _$_AddInterestEvent;

  AppUser get appUser;
  InterestViewModel get interest;
  @JsonKey(ignore: true)
  _$$_AddInterestEventCopyWith<_$_AddInterestEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RemoveInterestEventCopyWith<$Res> {
  factory _$$_RemoveInterestEventCopyWith(_$_RemoveInterestEvent value,
          $Res Function(_$_RemoveInterestEvent) then) =
      __$$_RemoveInterestEventCopyWithImpl<$Res>;
  @useResult
  $Res call({AppUser appUser, InterestViewModel interest});

  $AppUserCopyWith<$Res> get appUser;
  $InterestViewModelCopyWith<$Res> get interest;
}

/// @nodoc
class __$$_RemoveInterestEventCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$_RemoveInterestEvent>
    implements _$$_RemoveInterestEventCopyWith<$Res> {
  __$$_RemoveInterestEventCopyWithImpl(_$_RemoveInterestEvent _value,
      $Res Function(_$_RemoveInterestEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appUser = null,
    Object? interest = null,
  }) {
    return _then(_$_RemoveInterestEvent(
      null == appUser
          ? _value.appUser
          : appUser // ignore: cast_nullable_to_non_nullable
              as AppUser,
      null == interest
          ? _value.interest
          : interest // ignore: cast_nullable_to_non_nullable
              as InterestViewModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AppUserCopyWith<$Res> get appUser {
    return $AppUserCopyWith<$Res>(_value.appUser, (value) {
      return _then(_value.copyWith(appUser: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $InterestViewModelCopyWith<$Res> get interest {
    return $InterestViewModelCopyWith<$Res>(_value.interest, (value) {
      return _then(_value.copyWith(interest: value));
    });
  }
}

/// @nodoc

class _$_RemoveInterestEvent
    with DiagnosticableTreeMixin
    implements _RemoveInterestEvent {
  const _$_RemoveInterestEvent(this.appUser, this.interest);

  @override
  final AppUser appUser;
  @override
  final InterestViewModel interest;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProfileEvent.removeInterest(appUser: $appUser, interest: $interest)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProfileEvent.removeInterest'))
      ..add(DiagnosticsProperty('appUser', appUser))
      ..add(DiagnosticsProperty('interest', interest));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RemoveInterestEvent &&
            (identical(other.appUser, appUser) || other.appUser == appUser) &&
            (identical(other.interest, interest) ||
                other.interest == interest));
  }

  @override
  int get hashCode => Object.hash(runtimeType, appUser, interest);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RemoveInterestEventCopyWith<_$_RemoveInterestEvent> get copyWith =>
      __$$_RemoveInterestEventCopyWithImpl<_$_RemoveInterestEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUserProfile,
    required TResult Function(AppUser appUser) loadInterests,
    required TResult Function(AppUser appUser, InterestViewModel interest)
        addInterest,
    required TResult Function(AppUser appUser, InterestViewModel interest)
        removeInterest,
  }) {
    return removeInterest(appUser, interest);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUserProfile,
    TResult? Function(AppUser appUser)? loadInterests,
    TResult? Function(AppUser appUser, InterestViewModel interest)? addInterest,
    TResult? Function(AppUser appUser, InterestViewModel interest)?
        removeInterest,
  }) {
    return removeInterest?.call(appUser, interest);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUserProfile,
    TResult Function(AppUser appUser)? loadInterests,
    TResult Function(AppUser appUser, InterestViewModel interest)? addInterest,
    TResult Function(AppUser appUser, InterestViewModel interest)?
        removeInterest,
    required TResult orElse(),
  }) {
    if (removeInterest != null) {
      return removeInterest(appUser, interest);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserProfileEvent value) getUserProfile,
    required TResult Function(_InterestsEvent value) loadInterests,
    required TResult Function(_AddInterestEvent value) addInterest,
    required TResult Function(_RemoveInterestEvent value) removeInterest,
  }) {
    return removeInterest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserProfileEvent value)? getUserProfile,
    TResult? Function(_InterestsEvent value)? loadInterests,
    TResult? Function(_AddInterestEvent value)? addInterest,
    TResult? Function(_RemoveInterestEvent value)? removeInterest,
  }) {
    return removeInterest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserProfileEvent value)? getUserProfile,
    TResult Function(_InterestsEvent value)? loadInterests,
    TResult Function(_AddInterestEvent value)? addInterest,
    TResult Function(_RemoveInterestEvent value)? removeInterest,
    required TResult orElse(),
  }) {
    if (removeInterest != null) {
      return removeInterest(this);
    }
    return orElse();
  }
}

abstract class _RemoveInterestEvent implements ProfileEvent {
  const factory _RemoveInterestEvent(
          final AppUser appUser, final InterestViewModel interest) =
      _$_RemoveInterestEvent;

  AppUser get appUser;
  InterestViewModel get interest;
  @JsonKey(ignore: true)
  _$$_RemoveInterestEventCopyWith<_$_RemoveInterestEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProfileState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AppUser appUser) userProfileUpdated,
    required TResult Function(List<InterestViewModel> interestList)
        interestsLoaded,
    required TResult Function(AppError error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AppUser appUser)? userProfileUpdated,
    TResult? Function(List<InterestViewModel> interestList)? interestsLoaded,
    TResult? Function(AppError error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AppUser appUser)? userProfileUpdated,
    TResult Function(List<InterestViewModel> interestList)? interestsLoaded,
    TResult Function(AppError error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_UserProfileUpdatedState value)
        userProfileUpdated,
    required TResult Function(_InterestLoadedState value) interestsLoaded,
    required TResult Function(_ErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_UserProfileUpdatedState value)? userProfileUpdated,
    TResult? Function(_InterestLoadedState value)? interestsLoaded,
    TResult? Function(_ErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_UserProfileUpdatedState value)? userProfileUpdated,
    TResult Function(_InterestLoadedState value)? interestsLoaded,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res, ProfileState>;
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res, $Val extends ProfileState>
    implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

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
    extends _$ProfileStateCopyWithImpl<$Res, _$_InitialState>
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
    return 'ProfileState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'ProfileState.initial'));
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
    required TResult Function(AppUser appUser) userProfileUpdated,
    required TResult Function(List<InterestViewModel> interestList)
        interestsLoaded,
    required TResult Function(AppError error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AppUser appUser)? userProfileUpdated,
    TResult? Function(List<InterestViewModel> interestList)? interestsLoaded,
    TResult? Function(AppError error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AppUser appUser)? userProfileUpdated,
    TResult Function(List<InterestViewModel> interestList)? interestsLoaded,
    TResult Function(AppError error)? error,
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
    required TResult Function(_UserProfileUpdatedState value)
        userProfileUpdated,
    required TResult Function(_InterestLoadedState value) interestsLoaded,
    required TResult Function(_ErrorState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_UserProfileUpdatedState value)? userProfileUpdated,
    TResult? Function(_InterestLoadedState value)? interestsLoaded,
    TResult? Function(_ErrorState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_UserProfileUpdatedState value)? userProfileUpdated,
    TResult Function(_InterestLoadedState value)? interestsLoaded,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialState implements ProfileState {
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
    extends _$ProfileStateCopyWithImpl<$Res, _$_LoadingState>
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
    return 'ProfileState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'ProfileState.loading'));
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
    required TResult Function(AppUser appUser) userProfileUpdated,
    required TResult Function(List<InterestViewModel> interestList)
        interestsLoaded,
    required TResult Function(AppError error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AppUser appUser)? userProfileUpdated,
    TResult? Function(List<InterestViewModel> interestList)? interestsLoaded,
    TResult? Function(AppError error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AppUser appUser)? userProfileUpdated,
    TResult Function(List<InterestViewModel> interestList)? interestsLoaded,
    TResult Function(AppError error)? error,
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
    required TResult Function(_UserProfileUpdatedState value)
        userProfileUpdated,
    required TResult Function(_InterestLoadedState value) interestsLoaded,
    required TResult Function(_ErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_UserProfileUpdatedState value)? userProfileUpdated,
    TResult? Function(_InterestLoadedState value)? interestsLoaded,
    TResult? Function(_ErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_UserProfileUpdatedState value)? userProfileUpdated,
    TResult Function(_InterestLoadedState value)? interestsLoaded,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingState implements ProfileState {
  const factory _LoadingState() = _$_LoadingState;
}

/// @nodoc
abstract class _$$_UserProfileUpdatedStateCopyWith<$Res> {
  factory _$$_UserProfileUpdatedStateCopyWith(_$_UserProfileUpdatedState value,
          $Res Function(_$_UserProfileUpdatedState) then) =
      __$$_UserProfileUpdatedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({AppUser appUser});

  $AppUserCopyWith<$Res> get appUser;
}

/// @nodoc
class __$$_UserProfileUpdatedStateCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$_UserProfileUpdatedState>
    implements _$$_UserProfileUpdatedStateCopyWith<$Res> {
  __$$_UserProfileUpdatedStateCopyWithImpl(_$_UserProfileUpdatedState _value,
      $Res Function(_$_UserProfileUpdatedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appUser = null,
  }) {
    return _then(_$_UserProfileUpdatedState(
      null == appUser
          ? _value.appUser
          : appUser // ignore: cast_nullable_to_non_nullable
              as AppUser,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AppUserCopyWith<$Res> get appUser {
    return $AppUserCopyWith<$Res>(_value.appUser, (value) {
      return _then(_value.copyWith(appUser: value));
    });
  }
}

/// @nodoc

class _$_UserProfileUpdatedState
    with DiagnosticableTreeMixin
    implements _UserProfileUpdatedState {
  const _$_UserProfileUpdatedState(this.appUser);

  @override
  final AppUser appUser;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProfileState.userProfileUpdated(appUser: $appUser)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProfileState.userProfileUpdated'))
      ..add(DiagnosticsProperty('appUser', appUser));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserProfileUpdatedState &&
            (identical(other.appUser, appUser) || other.appUser == appUser));
  }

  @override
  int get hashCode => Object.hash(runtimeType, appUser);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserProfileUpdatedStateCopyWith<_$_UserProfileUpdatedState>
      get copyWith =>
          __$$_UserProfileUpdatedStateCopyWithImpl<_$_UserProfileUpdatedState>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AppUser appUser) userProfileUpdated,
    required TResult Function(List<InterestViewModel> interestList)
        interestsLoaded,
    required TResult Function(AppError error) error,
  }) {
    return userProfileUpdated(appUser);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AppUser appUser)? userProfileUpdated,
    TResult? Function(List<InterestViewModel> interestList)? interestsLoaded,
    TResult? Function(AppError error)? error,
  }) {
    return userProfileUpdated?.call(appUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AppUser appUser)? userProfileUpdated,
    TResult Function(List<InterestViewModel> interestList)? interestsLoaded,
    TResult Function(AppError error)? error,
    required TResult orElse(),
  }) {
    if (userProfileUpdated != null) {
      return userProfileUpdated(appUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_UserProfileUpdatedState value)
        userProfileUpdated,
    required TResult Function(_InterestLoadedState value) interestsLoaded,
    required TResult Function(_ErrorState value) error,
  }) {
    return userProfileUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_UserProfileUpdatedState value)? userProfileUpdated,
    TResult? Function(_InterestLoadedState value)? interestsLoaded,
    TResult? Function(_ErrorState value)? error,
  }) {
    return userProfileUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_UserProfileUpdatedState value)? userProfileUpdated,
    TResult Function(_InterestLoadedState value)? interestsLoaded,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (userProfileUpdated != null) {
      return userProfileUpdated(this);
    }
    return orElse();
  }
}

abstract class _UserProfileUpdatedState implements ProfileState {
  const factory _UserProfileUpdatedState(final AppUser appUser) =
      _$_UserProfileUpdatedState;

  AppUser get appUser;
  @JsonKey(ignore: true)
  _$$_UserProfileUpdatedStateCopyWith<_$_UserProfileUpdatedState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_InterestLoadedStateCopyWith<$Res> {
  factory _$$_InterestLoadedStateCopyWith(_$_InterestLoadedState value,
          $Res Function(_$_InterestLoadedState) then) =
      __$$_InterestLoadedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<InterestViewModel> interestList});
}

/// @nodoc
class __$$_InterestLoadedStateCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$_InterestLoadedState>
    implements _$$_InterestLoadedStateCopyWith<$Res> {
  __$$_InterestLoadedStateCopyWithImpl(_$_InterestLoadedState _value,
      $Res Function(_$_InterestLoadedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? interestList = null,
  }) {
    return _then(_$_InterestLoadedState(
      null == interestList
          ? _value._interestList
          : interestList // ignore: cast_nullable_to_non_nullable
              as List<InterestViewModel>,
    ));
  }
}

/// @nodoc

class _$_InterestLoadedState
    with DiagnosticableTreeMixin
    implements _InterestLoadedState {
  const _$_InterestLoadedState(final List<InterestViewModel> interestList)
      : _interestList = interestList;

  final List<InterestViewModel> _interestList;
  @override
  List<InterestViewModel> get interestList {
    if (_interestList is EqualUnmodifiableListView) return _interestList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_interestList);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProfileState.interestsLoaded(interestList: $interestList)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProfileState.interestsLoaded'))
      ..add(DiagnosticsProperty('interestList', interestList));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InterestLoadedState &&
            const DeepCollectionEquality()
                .equals(other._interestList, _interestList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_interestList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InterestLoadedStateCopyWith<_$_InterestLoadedState> get copyWith =>
      __$$_InterestLoadedStateCopyWithImpl<_$_InterestLoadedState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AppUser appUser) userProfileUpdated,
    required TResult Function(List<InterestViewModel> interestList)
        interestsLoaded,
    required TResult Function(AppError error) error,
  }) {
    return interestsLoaded(interestList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AppUser appUser)? userProfileUpdated,
    TResult? Function(List<InterestViewModel> interestList)? interestsLoaded,
    TResult? Function(AppError error)? error,
  }) {
    return interestsLoaded?.call(interestList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AppUser appUser)? userProfileUpdated,
    TResult Function(List<InterestViewModel> interestList)? interestsLoaded,
    TResult Function(AppError error)? error,
    required TResult orElse(),
  }) {
    if (interestsLoaded != null) {
      return interestsLoaded(interestList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_UserProfileUpdatedState value)
        userProfileUpdated,
    required TResult Function(_InterestLoadedState value) interestsLoaded,
    required TResult Function(_ErrorState value) error,
  }) {
    return interestsLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_UserProfileUpdatedState value)? userProfileUpdated,
    TResult? Function(_InterestLoadedState value)? interestsLoaded,
    TResult? Function(_ErrorState value)? error,
  }) {
    return interestsLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_UserProfileUpdatedState value)? userProfileUpdated,
    TResult Function(_InterestLoadedState value)? interestsLoaded,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (interestsLoaded != null) {
      return interestsLoaded(this);
    }
    return orElse();
  }
}

abstract class _InterestLoadedState implements ProfileState {
  const factory _InterestLoadedState(
      final List<InterestViewModel> interestList) = _$_InterestLoadedState;

  List<InterestViewModel> get interestList;
  @JsonKey(ignore: true)
  _$$_InterestLoadedStateCopyWith<_$_InterestLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorStateCopyWith<$Res> {
  factory _$$_ErrorStateCopyWith(
          _$_ErrorState value, $Res Function(_$_ErrorState) then) =
      __$$_ErrorStateCopyWithImpl<$Res>;
  @useResult
  $Res call({AppError error});
}

/// @nodoc
class __$$_ErrorStateCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$_ErrorState>
    implements _$$_ErrorStateCopyWith<$Res> {
  __$$_ErrorStateCopyWithImpl(
      _$_ErrorState _value, $Res Function(_$_ErrorState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_ErrorState(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as AppError,
    ));
  }
}

/// @nodoc

class _$_ErrorState with DiagnosticableTreeMixin implements _ErrorState {
  const _$_ErrorState(this.error);

  @override
  final AppError error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProfileState.error(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProfileState.error'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ErrorState &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorStateCopyWith<_$_ErrorState> get copyWith =>
      __$$_ErrorStateCopyWithImpl<_$_ErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AppUser appUser) userProfileUpdated,
    required TResult Function(List<InterestViewModel> interestList)
        interestsLoaded,
    required TResult Function(AppError error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AppUser appUser)? userProfileUpdated,
    TResult? Function(List<InterestViewModel> interestList)? interestsLoaded,
    TResult? Function(AppError error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AppUser appUser)? userProfileUpdated,
    TResult Function(List<InterestViewModel> interestList)? interestsLoaded,
    TResult Function(AppError error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_UserProfileUpdatedState value)
        userProfileUpdated,
    required TResult Function(_InterestLoadedState value) interestsLoaded,
    required TResult Function(_ErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_UserProfileUpdatedState value)? userProfileUpdated,
    TResult? Function(_InterestLoadedState value)? interestsLoaded,
    TResult? Function(_ErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_UserProfileUpdatedState value)? userProfileUpdated,
    TResult Function(_InterestLoadedState value)? interestsLoaded,
    TResult Function(_ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorState implements ProfileState {
  const factory _ErrorState(final AppError error) = _$_ErrorState;

  AppError get error;
  @JsonKey(ignore: true)
  _$$_ErrorStateCopyWith<_$_ErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}
