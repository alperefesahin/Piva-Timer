part of 'offline_timer_cubit.dart';

@freezed
class OfflineTimerState with _$OfflineTimerState {
  const OfflineTimerState._();

  const factory OfflineTimerState.initial({
    @Default(true) bool isStop,
    @Default(1) int minuteOfNumberPicker,
    @Default(0) int hourOfNumberPicker,
    @Default(Duration(minutes: 15)) Duration timerDuration,
  }) = _Initial;

/*   bool get timeIsUp => (hours == 00 && minutes == 00); */
}
