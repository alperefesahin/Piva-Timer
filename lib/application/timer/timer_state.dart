part of 'timer_cubit.dart';

@freezed
class TimerState with _$TimerState {
  const TimerState._();

  const factory TimerState.initial({
    @Default(true) bool isStop,
    @Default(15) int minuteOfNumberPicker,
    @Default(0) int hourOfNumberPicker,
    @Default(Duration(minutes: 15)) Duration timerDuration,
    @Default(0) int spentFocusedTime,
  }) = _Initial;

  bool get timerIsZero => timerDuration == Duration.zero;
}
