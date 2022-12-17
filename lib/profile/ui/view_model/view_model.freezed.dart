// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$InterestViewModel {
  String get docId => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  bool get isSelected => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InterestViewModelCopyWith<InterestViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InterestViewModelCopyWith<$Res> {
  factory $InterestViewModelCopyWith(
          InterestViewModel value, $Res Function(InterestViewModel) then) =
      _$InterestViewModelCopyWithImpl<$Res, InterestViewModel>;
  @useResult
  $Res call({String docId, String icon, String name, bool isSelected});
}

/// @nodoc
class _$InterestViewModelCopyWithImpl<$Res, $Val extends InterestViewModel>
    implements $InterestViewModelCopyWith<$Res> {
  _$InterestViewModelCopyWithImpl(this._value, this._then);

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
    Object? isSelected = null,
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
      isSelected: null == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InterestViewModelCopyWith<$Res>
    implements $InterestViewModelCopyWith<$Res> {
  factory _$$_InterestViewModelCopyWith(_$_InterestViewModel value,
          $Res Function(_$_InterestViewModel) then) =
      __$$_InterestViewModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String docId, String icon, String name, bool isSelected});
}

/// @nodoc
class __$$_InterestViewModelCopyWithImpl<$Res>
    extends _$InterestViewModelCopyWithImpl<$Res, _$_InterestViewModel>
    implements _$$_InterestViewModelCopyWith<$Res> {
  __$$_InterestViewModelCopyWithImpl(
      _$_InterestViewModel _value, $Res Function(_$_InterestViewModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? docId = null,
    Object? icon = null,
    Object? name = null,
    Object? isSelected = null,
  }) {
    return _then(_$_InterestViewModel(
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
      isSelected: null == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_InterestViewModel extends _InterestViewModel
    with DiagnosticableTreeMixin {
  const _$_InterestViewModel(
      {required this.docId,
      required this.icon,
      required this.name,
      this.isSelected = false})
      : super._();

  @override
  final String docId;
  @override
  final String icon;
  @override
  final String name;
  @override
  @JsonKey()
  final bool isSelected;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'InterestViewModel(docId: $docId, icon: $icon, name: $name, isSelected: $isSelected)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'InterestViewModel'))
      ..add(DiagnosticsProperty('docId', docId))
      ..add(DiagnosticsProperty('icon', icon))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('isSelected', isSelected));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InterestViewModel &&
            (identical(other.docId, docId) || other.docId == docId) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.isSelected, isSelected) ||
                other.isSelected == isSelected));
  }

  @override
  int get hashCode => Object.hash(runtimeType, docId, icon, name, isSelected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InterestViewModelCopyWith<_$_InterestViewModel> get copyWith =>
      __$$_InterestViewModelCopyWithImpl<_$_InterestViewModel>(
          this, _$identity);
}

abstract class _InterestViewModel extends InterestViewModel {
  const factory _InterestViewModel(
      {required final String docId,
      required final String icon,
      required final String name,
      final bool isSelected}) = _$_InterestViewModel;
  const _InterestViewModel._() : super._();

  @override
  String get docId;
  @override
  String get icon;
  @override
  String get name;
  @override
  bool get isSelected;
  @override
  @JsonKey(ignore: true)
  _$$_InterestViewModelCopyWith<_$_InterestViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}
