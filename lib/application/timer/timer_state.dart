part of 'timer_cubit.dart';

@freezed
class TimerState with _$TimerState {
  const TimerState._();

  const factory TimerState.initial({
    @Default(true) bool isTimerStopped,
    @Default(true) bool isTimerReset,
    @Default(false) bool isTimersDurationUp,
    
    @Default(Duration(minutes: 15)) Duration durationOfTimer,
    @Default(Duration.zero) Duration spentFocusedTime,

    @Default(15) int minuteOfNumberPicker,
    @Default(0) int hourOfNumberPicker,
    @Default(0) int secondOfNumberPicker,
  }) = _Initial;

  bool get timerIsZero => durationOfTimer == Duration.zero;
}
