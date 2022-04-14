// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'localization_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LocalizationStateTearOff {
  const _$LocalizationStateTearOff();

  _Initial initial({Locale appLanguage = const Locale("en")}) {
    return _Initial(
      appLanguage: appLanguage,
    );
  }
}

/// @nodoc
const $LocalizationState = _$LocalizationStateTearOff();

/// @nodoc
mixin _$LocalizationState {
  Locale get appLanguage => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Locale appLanguage) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Locale appLanguage)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Locale appLanguage)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocalizationStateCopyWith<LocalizationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalizationStateCopyWith<$Res> {
  factory $LocalizationStateCopyWith(
          LocalizationState value, $Res Function(LocalizationState) then) =
      _$LocalizationStateCopyWithImpl<$Res>;
  $Res call({Locale appLanguage});
}

/// @nodoc
class _$LocalizationStateCopyWithImpl<$Res>
    implements $LocalizationStateCopyWith<$Res> {
  _$LocalizationStateCopyWithImpl(this._value, this._then);

  final LocalizationState _value;
  // ignore: unused_field
  final $Res Function(LocalizationState) _then;

  @override
  $Res call({
    Object? appLanguage = freezed,
  }) {
    return _then(_value.copyWith(
      appLanguage: appLanguage == freezed
          ? _value.appLanguage
          : appLanguage // ignore: cast_nullable_to_non_nullable
              as Locale,
    ));
  }
}

/// @nodoc
abstract class _$InitialCopyWith<$Res>
    implements $LocalizationStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
  @override
  $Res call({Locale appLanguage});
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$LocalizationStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;

  @override
  $Res call({
    Object? appLanguage = freezed,
  }) {
    return _then(_Initial(
      appLanguage: appLanguage == freezed
          ? _value.appLanguage
          : appLanguage // ignore: cast_nullable_to_non_nullable
              as Locale,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial({this.appLanguage = const Locale("en")});

  @JsonKey()
  @override
  final Locale appLanguage;

  @override
  String toString() {
    return 'LocalizationState.initial(appLanguage: $appLanguage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Initial &&
            const DeepCollectionEquality()
                .equals(other.appLanguage, appLanguage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(appLanguage));

  @JsonKey(ignore: true)
  @override
  _$InitialCopyWith<_Initial> get copyWith =>
      __$InitialCopyWithImpl<_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Locale appLanguage) initial,
  }) {
    return initial(appLanguage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Locale appLanguage)? initial,
  }) {
    return initial?.call(appLanguage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Locale appLanguage)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(appLanguage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements LocalizationState {
  const factory _Initial({Locale appLanguage}) = _$_Initial;

  @override
  Locale get appLanguage;
  @override
  @JsonKey(ignore: true)
  _$InitialCopyWith<_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
