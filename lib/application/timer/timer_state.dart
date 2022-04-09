part of 'timer_cubit.dart';

@freezed
class TimerState with _$TimerState {
  const TimerState._();

  const factory TimerState.initial({
    @Default(true) bool isStop,
    @Default(true) bool isReseted,
    
    @Default(Duration(minutes: 15)) Duration timerDuration,
    @Default(Duration.zero) Duration spentFocusedTime,

    @Default(15) int minuteOfNumberPicker,
    @Default(0) int hourOfNumberPicker,
    @Default(0) int secondOfNumberPicker,
  }) = _Initial;

  bool get timerIsZero => timerDuration == Duration.zero;
}
