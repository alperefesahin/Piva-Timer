// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'offline_timer_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$OfflineTimerStateTearOff {
  const _$OfflineTimerStateTearOff();

  _Initial initial(
      {bool isStop = true,
      int minuteOfNumberPicker = 15,
      int hourOfNumberPicker = 0,
      Duration timerDuration = const Duration(minutes: 15)}) {
    return _Initial(
      isStop: isStop,
      minuteOfNumberPicker: minuteOfNumberPicker,
      hourOfNumberPicker: hourOfNumberPicker,
      timerDuration: timerDuration,
    );
  }
}

/// @nodoc
const $OfflineTimerState = _$OfflineTimerStateTearOff();

/// @nodoc
mixin _$OfflineTimerState {
  bool get isStop => throw _privateConstructorUsedError;
  int get minuteOfNumberPicker => throw _privateConstructorUsedError;
  int get hourOfNumberPicker => throw _privateConstructorUsedError;
  Duration get timerDuration => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isStop, int minuteOfNumberPicker,
            int hourOfNumberPicker, Duration timerDuration)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isStop, int minuteOfNumberPicker,
            int hourOfNumberPicker, Duration timerDuration)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isStop, int minuteOfNumberPicker,
            int hourOfNumberPicker, Duration timerDuration)?
        initial,
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
  $OfflineTimerStateCopyWith<OfflineTimerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OfflineTimerStateCopyWith<$Res> {
  factory $OfflineTimerStateCopyWith(
          OfflineTimerState value, $Res Function(OfflineTimerState) then) =
      _$OfflineTimerStateCopyWithImpl<$Res>;
  $Res call(
      {bool isStop,
      int minuteOfNumberPicker,
      int hourOfNumberPicker,
      Duration timerDuration});
}

/// @nodoc
class _$OfflineTimerStateCopyWithImpl<$Res>
    implements $OfflineTimerStateCopyWith<$Res> {
  _$OfflineTimerStateCopyWithImpl(this._value, this._then);

  final OfflineTimerState _value;
  // ignore: unused_field
  final $Res Function(OfflineTimerState) _then;

  @override
  $Res call({
    Object? isStop = freezed,
    Object? minuteOfNumberPicker = freezed,
    Object? hourOfNumberPicker = freezed,
    Object? timerDuration = freezed,
  }) {
    return _then(_value.copyWith(
      isStop: isStop == freezed
          ? _value.isStop
          : isStop // ignore: cast_nullable_to_non_nullable
              as bool,
      minuteOfNumberPicker: minuteOfNumberPicker == freezed
          ? _value.minuteOfNumberPicker
          : minuteOfNumberPicker // ignore: cast_nullable_to_non_nullable
              as int,
      hourOfNumberPicker: hourOfNumberPicker == freezed
          ? _value.hourOfNumberPicker
          : hourOfNumberPicker // ignore: cast_nullable_to_non_nullable
              as int,
      timerDuration: timerDuration == freezed
          ? _value.timerDuration
          : timerDuration // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc
abstract class _$InitialCopyWith<$Res>
    implements $OfflineTimerStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isStop,
      int minuteOfNumberPicker,
      int hourOfNumberPicker,
      Duration timerDuration});
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$OfflineTimerStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;

  @override
  $Res call({
    Object? isStop = freezed,
    Object? minuteOfNumberPicker = freezed,
    Object? hourOfNumberPicker = freezed,
    Object? timerDuration = freezed,
  }) {
    return _then(_Initial(
      isStop: isStop == freezed
          ? _value.isStop
          : isStop // ignore: cast_nullable_to_non_nullable
              as bool,
      minuteOfNumberPicker: minuteOfNumberPicker == freezed
          ? _value.minuteOfNumberPicker
          : minuteOfNumberPicker // ignore: cast_nullable_to_non_nullable
              as int,
      hourOfNumberPicker: hourOfNumberPicker == freezed
          ? _value.hourOfNumberPicker
          : hourOfNumberPicker // ignore: cast_nullable_to_non_nullable
              as int,
      timerDuration: timerDuration == freezed
          ? _value.timerDuration
          : timerDuration // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc

class _$_Initial extends _Initial {
  const _$_Initial(
      {this.isStop = true,
      this.minuteOfNumberPicker = 15,
      this.hourOfNumberPicker = 0,
      this.timerDuration = const Duration(minutes: 15)})
      : super._();

  @JsonKey()
  @override
  final bool isStop;
  @JsonKey()
  @override
  final int minuteOfNumberPicker;
  @JsonKey()
  @override
  final int hourOfNumberPicker;
  @JsonKey()
  @override
  final Duration timerDuration;

  @override
  String toString() {
    return 'OfflineTimerState.initial(isStop: $isStop, minuteOfNumberPicker: $minuteOfNumberPicker, hourOfNumberPicker: $hourOfNumberPicker, timerDuration: $timerDuration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Initial &&
            const DeepCollectionEquality().equals(other.isStop, isStop) &&
            const DeepCollectionEquality()
                .equals(other.minuteOfNumberPicker, minuteOfNumberPicker) &&
            const DeepCollectionEquality()
                .equals(other.hourOfNumberPicker, hourOfNumberPicker) &&
            const DeepCollectionEquality()
                .equals(other.timerDuration, timerDuration));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isStop),
      const DeepCollectionEquality().hash(minuteOfNumberPicker),
      const DeepCollectionEquality().hash(hourOfNumberPicker),
      const DeepCollectionEquality().hash(timerDuration));

  @JsonKey(ignore: true)
  @override
  _$InitialCopyWith<_Initial> get copyWith =>
      __$InitialCopyWithImpl<_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isStop, int minuteOfNumberPicker,
            int hourOfNumberPicker, Duration timerDuration)
        initial,
  }) {
    return initial(
        isStop, minuteOfNumberPicker, hourOfNumberPicker, timerDuration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isStop, int minuteOfNumberPicker,
            int hourOfNumberPicker, Duration timerDuration)?
        initial,
  }) {
    return initial?.call(
        isStop, minuteOfNumberPicker, hourOfNumberPicker, timerDuration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isStop, int minuteOfNumberPicker,
            int hourOfNumberPicker, Duration timerDuration)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(
          isStop, minuteOfNumberPicker, hourOfNumberPicker, timerDuration);
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

abstract class _Initial extends OfflineTimerState {
  const factory _Initial(
      {bool isStop,
      int minuteOfNumberPicker,
      int hourOfNumberPicker,
      Duration timerDuration}) = _$_Initial;
  const _Initial._() : super._();

  @override
  bool get isStop;
  @override
  int get minuteOfNumberPicker;
  @override
  int get hourOfNumberPicker;
  @override
  Duration get timerDuration;
  @override
  @JsonKey(ignore: true)
  _$InitialCopyWith<_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
