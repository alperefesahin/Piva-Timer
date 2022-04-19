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
      {bool isTimerStopped = true,
      bool isTimerReset = true,
      bool isTimersDurationUp = false,
      Duration durationOfTimer = const Duration(minutes: 15),
      Duration spentFocusedTime = Duration.zero,
      int minuteOfNumberPicker = 15,
      int hourOfNumberPicker = 0,
      int secondOfNumberPicker = 0}) {
    return _Initial(
      isTimerStopped: isTimerStopped,
      isTimerReset: isTimerReset,
      isTimersDurationUp: isTimersDurationUp,
      durationOfTimer: durationOfTimer,
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
  bool get isTimerStopped => throw _privateConstructorUsedError;
  bool get isTimerReset => throw _privateConstructorUsedError;
  bool get isTimersDurationUp => throw _privateConstructorUsedError;
  Duration get durationOfTimer => throw _privateConstructorUsedError;
  Duration get spentFocusedTime => throw _privateConstructorUsedError;
  int get minuteOfNumberPicker => throw _privateConstructorUsedError;
  int get hourOfNumberPicker => throw _privateConstructorUsedError;
  int get secondOfNumberPicker => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool isTimerStopped,
            bool isTimerReset,
            bool isTimersDurationUp,
            Duration durationOfTimer,
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
            bool isTimerStopped,
            bool isTimerReset,
            bool isTimersDurationUp,
            Duration durationOfTimer,
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
            bool isTimerStopped,
            bool isTimerReset,
            bool isTimersDurationUp,
            Duration durationOfTimer,
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
      {bool isTimerStopped,
      bool isTimerReset,
      bool isTimersDurationUp,
      Duration durationOfTimer,
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
    Object? isTimerStopped = freezed,
    Object? isTimerReset = freezed,
    Object? isTimersDurationUp = freezed,
    Object? durationOfTimer = freezed,
    Object? spentFocusedTime = freezed,
    Object? minuteOfNumberPicker = freezed,
    Object? hourOfNumberPicker = freezed,
    Object? secondOfNumberPicker = freezed,
  }) {
    return _then(_value.copyWith(
      isTimerStopped: isTimerStopped == freezed
          ? _value.isTimerStopped
          : isTimerStopped // ignore: cast_nullable_to_non_nullable
              as bool,
      isTimerReset: isTimerReset == freezed
          ? _value.isTimerReset
          : isTimerReset // ignore: cast_nullable_to_non_nullable
              as bool,
      isTimersDurationUp: isTimersDurationUp == freezed
          ? _value.isTimersDurationUp
          : isTimersDurationUp // ignore: cast_nullable_to_non_nullable
              as bool,
      durationOfTimer: durationOfTimer == freezed
          ? _value.durationOfTimer
          : durationOfTimer // ignore: cast_nullable_to_non_nullable
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
      {bool isTimerStopped,
      bool isTimerReset,
      bool isTimersDurationUp,
      Duration durationOfTimer,
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
    Object? isTimerStopped = freezed,
    Object? isTimerReset = freezed,
    Object? isTimersDurationUp = freezed,
    Object? durationOfTimer = freezed,
    Object? spentFocusedTime = freezed,
    Object? minuteOfNumberPicker = freezed,
    Object? hourOfNumberPicker = freezed,
    Object? secondOfNumberPicker = freezed,
  }) {
    return _then(_Initial(
      isTimerStopped: isTimerStopped == freezed
          ? _value.isTimerStopped
          : isTimerStopped // ignore: cast_nullable_to_non_nullable
              as bool,
      isTimerReset: isTimerReset == freezed
          ? _value.isTimerReset
          : isTimerReset // ignore: cast_nullable_to_non_nullable
              as bool,
      isTimersDurationUp: isTimersDurationUp == freezed
          ? _value.isTimersDurationUp
          : isTimersDurationUp // ignore: cast_nullable_to_non_nullable
              as bool,
      durationOfTimer: durationOfTimer == freezed
          ? _value.durationOfTimer
          : durationOfTimer // ignore: cast_nullable_to_non_nullable
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
      {this.isTimerStopped = true,
      this.isTimerReset = true,
      this.isTimersDurationUp = false,
      this.durationOfTimer = const Duration(minutes: 15),
      this.spentFocusedTime = Duration.zero,
      this.minuteOfNumberPicker = 15,
      this.hourOfNumberPicker = 0,
      this.secondOfNumberPicker = 0})
      : super._();

  @JsonKey()
  @override
  final bool isTimerStopped;
  @JsonKey()
  @override
  final bool isTimerReset;
  @JsonKey()
  @override
  final bool isTimersDurationUp;
  @JsonKey()
  @override
  final Duration durationOfTimer;
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
    return 'TimerState.initial(isTimerStopped: $isTimerStopped, isTimerReset: $isTimerReset, isTimersDurationUp: $isTimersDurationUp, durationOfTimer: $durationOfTimer, spentFocusedTime: $spentFocusedTime, minuteOfNumberPicker: $minuteOfNumberPicker, hourOfNumberPicker: $hourOfNumberPicker, secondOfNumberPicker: $secondOfNumberPicker)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Initial &&
            const DeepCollectionEquality()
                .equals(other.isTimerStopped, isTimerStopped) &&
            const DeepCollectionEquality()
                .equals(other.isTimerReset, isTimerReset) &&
            const DeepCollectionEquality()
                .equals(other.isTimersDurationUp, isTimersDurationUp) &&
            const DeepCollectionEquality()
                .equals(other.durationOfTimer, durationOfTimer) &&
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
      const DeepCollectionEquality().hash(isTimerStopped),
      const DeepCollectionEquality().hash(isTimerReset),
      const DeepCollectionEquality().hash(isTimersDurationUp),
      const DeepCollectionEquality().hash(durationOfTimer),
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
            bool isTimerStopped,
            bool isTimerReset,
            bool isTimersDurationUp,
            Duration durationOfTimer,
            Duration spentFocusedTime,
            int minuteOfNumberPicker,
            int hourOfNumberPicker,
            int secondOfNumberPicker)
        initial,
  }) {
    return initial(
        isTimerStopped,
        isTimerReset,
        isTimersDurationUp,
        durationOfTimer,
        spentFocusedTime,
        minuteOfNumberPicker,
        hourOfNumberPicker,
        secondOfNumberPicker);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            bool isTimerStopped,
            bool isTimerReset,
            bool isTimersDurationUp,
            Duration durationOfTimer,
            Duration spentFocusedTime,
            int minuteOfNumberPicker,
            int hourOfNumberPicker,
            int secondOfNumberPicker)?
        initial,
  }) {
    return initial?.call(
        isTimerStopped,
        isTimerReset,
        isTimersDurationUp,
        durationOfTimer,
        spentFocusedTime,
        minuteOfNumberPicker,
        hourOfNumberPicker,
        secondOfNumberPicker);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            bool isTimerStopped,
            bool isTimerReset,
            bool isTimersDurationUp,
            Duration durationOfTimer,
            Duration spentFocusedTime,
            int minuteOfNumberPicker,
            int hourOfNumberPicker,
            int secondOfNumberPicker)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(
          isTimerStopped,
          isTimerReset,
          isTimersDurationUp,
          durationOfTimer,
          spentFocusedTime,
          minuteOfNumberPicker,
          hourOfNumberPicker,
          secondOfNumberPicker);
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
      {bool isTimerStopped,
      bool isTimerReset,
      bool isTimersDurationUp,
      Duration durationOfTimer,
      Duration spentFocusedTime,
      int minuteOfNumberPicker,
      int hourOfNumberPicker,
      int secondOfNumberPicker}) = _$_Initial;
  const _Initial._() : super._();

  @override
  bool get isTimerStopped;
  @override
  bool get isTimerReset;
  @override
  bool get isTimersDurationUp;
  @override
  Duration get durationOfTimer;
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
