// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'timer_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TimerStateTearOff {
  const _$TimerStateTearOff();

  _Initial initial(
      {bool isStop = true,
      bool isReseted = true,
      Duration timerDuration = const Duration(minutes: 15),
      Duration spentFocusedTime = Duration.zero,
      int minuteOfNumberPicker = 15,
      int hourOfNumberPicker = 0,
      int secondOfNumberPicker = 0}) {
    return _Initial(
      isStop: isStop,
      isReseted: isReseted,
      timerDuration: timerDuration,
      spentFocusedTime: spentFocusedTime,
      minuteOfNumberPicker: minuteOfNumberPicker,
      hourOfNumberPicker: hourOfNumberPicker,
      secondOfNumberPicker: secondOfNumberPicker,
    );
  }
}

/// @nodoc
const $TimerState = _$TimerStateTearOff();

/// @nodoc
mixin _$TimerState {
  bool get isStop => throw _privateConstructorUsedError;
  bool get isReseted => throw _privateConstructorUsedError;
  Duration get timerDuration => throw _privateConstructorUsedError;
  Duration get spentFocusedTime => throw _privateConstructorUsedError;
  int get minuteOfNumberPicker => throw _privateConstructorUsedError;
  int get hourOfNumberPicker => throw _privateConstructorUsedError;
  int get secondOfNumberPicker => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool isStop,
            bool isReseted,
            Duration timerDuration,
            Duration spentFocusedTime,
            int minuteOfNumberPicker,
            int hourOfNumberPicker,
            int secondOfNumberPicker)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            bool isStop,
            bool isReseted,
            Duration timerDuration,
            Duration spentFocusedTime,
            int minuteOfNumberPicker,
            int hourOfNumberPicker,
            int secondOfNumberPicker)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            bool isStop,
            bool isReseted,
            Duration timerDuration,
            Duration spentFocusedTime,
            int minuteOfNumberPicker,
            int hourOfNumberPicker,
            int secondOfNumberPicker)?
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
  $TimerStateCopyWith<TimerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimerStateCopyWith<$Res> {
  factory $TimerStateCopyWith(
          TimerState value, $Res Function(TimerState) then) =
      _$TimerStateCopyWithImpl<$Res>;
  $Res call(
      {bool isStop,
      bool isReseted,
      Duration timerDuration,
      Duration spentFocusedTime,
      int minuteOfNumberPicker,
      int hourOfNumberPicker,
      int secondOfNumberPicker});
}

/// @nodoc
class _$TimerStateCopyWithImpl<$Res> implements $TimerStateCopyWith<$Res> {
  _$TimerStateCopyWithImpl(this._value, this._then);

  final TimerState _value;
  // ignore: unused_field
  final $Res Function(TimerState) _then;

  @override
  $Res call({
    Object? isStop = freezed,
    Object? isReseted = freezed,
    Object? timerDuration = freezed,
    Object? spentFocusedTime = freezed,
    Object? minuteOfNumberPicker = freezed,
    Object? hourOfNumberPicker = freezed,
    Object? secondOfNumberPicker = freezed,
  }) {
    return _then(_value.copyWith(
      isStop: isStop == freezed
          ? _value.isStop
          : isStop // ignore: cast_nullable_to_non_nullable
              as bool,
      isReseted: isReseted == freezed
          ? _value.isReseted
          : isReseted // ignore: cast_nullable_to_non_nullable
              as bool,
      timerDuration: timerDuration == freezed
          ? _value.timerDuration
          : timerDuration // ignore: cast_nullable_to_non_nullable
              as Duration,
      spentFocusedTime: spentFocusedTime == freezed
          ? _value.spentFocusedTime
          : spentFocusedTime // ignore: cast_nullable_to_non_nullable
              as Duration,
      minuteOfNumberPicker: minuteOfNumberPicker == freezed
          ? _value.minuteOfNumberPicker
          : minuteOfNumberPicker // ignore: cast_nullable_to_non_nullable
              as int,
      hourOfNumberPicker: hourOfNumberPicker == freezed
          ? _value.hourOfNumberPicker
          : hourOfNumberPicker // ignore: cast_nullable_to_non_nullable
              as int,
      secondOfNumberPicker: secondOfNumberPicker == freezed
          ? _value.secondOfNumberPicker
          : secondOfNumberPicker // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> implements $TimerStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isStop,
      bool isReseted,
      Duration timerDuration,
      Duration spentFocusedTime,
      int minuteOfNumberPicker,
      int hourOfNumberPicker,
      int secondOfNumberPicker});
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$TimerStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;

  @override
  $Res call({
    Object? isStop = freezed,
    Object? isReseted = freezed,
    Object? timerDuration = freezed,
    Object? spentFocusedTime = freezed,
    Object? minuteOfNumberPicker = freezed,
    Object? hourOfNumberPicker = freezed,
    Object? secondOfNumberPicker = freezed,
  }) {
    return _then(_Initial(
      isStop: isStop == freezed
          ? _value.isStop
          : isStop // ignore: cast_nullable_to_non_nullable
              as bool,
      isReseted: isReseted == freezed
          ? _value.isReseted
          : isReseted // ignore: cast_nullable_to_non_nullable
              as bool,
      timerDuration: timerDuration == freezed
          ? _value.timerDuration
          : timerDuration // ignore: cast_nullable_to_non_nullable
              as Duration,
      spentFocusedTime: spentFocusedTime == freezed
          ? _value.spentFocusedTime
          : spentFocusedTime // ignore: cast_nullable_to_non_nullable
              as Duration,
      minuteOfNumberPicker: minuteOfNumberPicker == freezed
          ? _value.minuteOfNumberPicker
          : minuteOfNumberPicker // ignore: cast_nullable_to_non_nullable
              as int,
      hourOfNumberPicker: hourOfNumberPicker == freezed
          ? _value.hourOfNumberPicker
          : hourOfNumberPicker // ignore: cast_nullable_to_non_nullable
              as int,
      secondOfNumberPicker: secondOfNumberPicker == freezed
          ? _value.secondOfNumberPicker
          : secondOfNumberPicker // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Initial extends _Initial {
  const _$_Initial(
      {this.isStop = true,
      this.isReseted = true,
      this.timerDuration = const Duration(minutes: 15),
      this.spentFocusedTime = Duration.zero,
      this.minuteOfNumberPicker = 15,
      this.hourOfNumberPicker = 0,
      this.secondOfNumberPicker = 0})
      : super._();

  @JsonKey()
  @override
  final bool isStop;
  @JsonKey()
  @override
  final bool isReseted;
  @JsonKey()
  @override
  final Duration timerDuration;
  @JsonKey()
  @override
  final Duration spentFocusedTime;
  @JsonKey()
  @override
  final int minuteOfNumberPicker;
  @JsonKey()
  @override
  final int hourOfNumberPicker;
  @JsonKey()
  @override
  final int secondOfNumberPicker;

  @override
  String toString() {
    return 'TimerState.initial(isStop: $isStop, isReseted: $isReseted, timerDuration: $timerDuration, spentFocusedTime: $spentFocusedTime, minuteOfNumberPicker: $minuteOfNumberPicker, hourOfNumberPicker: $hourOfNumberPicker, secondOfNumberPicker: $secondOfNumberPicker)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Initial &&
            const DeepCollectionEquality().equals(other.isStop, isStop) &&
            const DeepCollectionEquality().equals(other.isReseted, isReseted) &&
            const DeepCollectionEquality()
                .equals(other.timerDuration, timerDuration) &&
            const DeepCollectionEquality()
                .equals(other.spentFocusedTime, spentFocusedTime) &&
            const DeepCollectionEquality()
                .equals(other.minuteOfNumberPicker, minuteOfNumberPicker) &&
            const DeepCollectionEquality()
                .equals(other.hourOfNumberPicker, hourOfNumberPicker) &&
            const DeepCollectionEquality()
                .equals(other.secondOfNumberPicker, secondOfNumberPicker));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isStop),
      const DeepCollectionEquality().hash(isReseted),
      const DeepCollectionEquality().hash(timerDuration),
      const DeepCollectionEquality().hash(spentFocusedTime),
      const DeepCollectionEquality().hash(minuteOfNumberPicker),
      const DeepCollectionEquality().hash(hourOfNumberPicker),
      const DeepCollectionEquality().hash(secondOfNumberPicker));

  @JsonKey(ignore: true)
  @override
  _$InitialCopyWith<_Initial> get copyWith =>
      __$InitialCopyWithImpl<_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool isStop,
            bool isReseted,
            Duration timerDuration,
            Duration spentFocusedTime,
            int minuteOfNumberPicker,
            int hourOfNumberPicker,
            int secondOfNumberPicker)
        initial,
  }) {
    return initial(isStop, isReseted, timerDuration, spentFocusedTime,
        minuteOfNumberPicker, hourOfNumberPicker, secondOfNumberPicker);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            bool isStop,
            bool isReseted,
            Duration timerDuration,
            Duration spentFocusedTime,
            int minuteOfNumberPicker,
            int hourOfNumberPicker,
            int secondOfNumberPicker)?
        initial,
  }) {
    return initial?.call(isStop, isReseted, timerDuration, spentFocusedTime,
        minuteOfNumberPicker, hourOfNumberPicker, secondOfNumberPicker);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            bool isStop,
            bool isReseted,
            Duration timerDuration,
            Duration spentFocusedTime,
            int minuteOfNumberPicker,
            int hourOfNumberPicker,
            int secondOfNumberPicker)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(isStop, isReseted, timerDuration, spentFocusedTime,
          minuteOfNumberPicker, hourOfNumberPicker, secondOfNumberPicker);
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

abstract class _Initial extends TimerState {
  const factory _Initial(
      {bool isStop,
      bool isReseted,
      Duration timerDuration,
      Duration spentFocusedTime,
      int minuteOfNumberPicker,
      int hourOfNumberPicker,
      int secondOfNumberPicker}) = _$_Initial;
  const _Initial._() : super._();

  @override
  bool get isStop;
  @override
  bool get isReseted;
  @override
  Duration get timerDuration;
  @override
  Duration get spentFocusedTime;
  @override
  int get minuteOfNumberPicker;
  @override
  int get hourOfNumberPicker;
  @override
  int get secondOfNumberPicker;
  @override
  @JsonKey(ignore: true)
  _$InitialCopyWith<_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
