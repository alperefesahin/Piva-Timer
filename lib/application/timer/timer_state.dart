part of 'timer_cubit.dart';

@freezed
class TimerState with _$TimerState {
  const TimerState._();

  const factory TimerState.initial({
    @Default(false) bool isTimerStopped,
    @Default(false) bool isTimerResumed,
    @Default(false) bool isTimersDurationUp,
    @Default(true) bool isTimerReset,

    @Default(Duration(minutes: 15)) Duration durationOfTimer,

    @Default(0) int remainingOfTimerDuration,
    @Default(0) int hourOfNumberPicker,
    @Default(15) int minuteOfNumberPicker,
    @Default(0) int secondOfNumberPicker,
  }) = _Initial;

  bool get timerIsZero => durationOfTimer == Duration.zero;
}
