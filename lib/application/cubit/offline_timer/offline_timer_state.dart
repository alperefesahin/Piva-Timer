part of 'offline_timer_cubit.dart';

@freezed
class OfflineTimerState with _$OfflineTimerState {
  const OfflineTimerState._();

  const factory OfflineTimerState.initial({
    @Default(true) bool isStop,
    @Default(00) int hours,
    @Default(00) int minutes,
  }) = _Initial;

  bool get timeIsUp => (hours == 00 && minutes == 00);
}
