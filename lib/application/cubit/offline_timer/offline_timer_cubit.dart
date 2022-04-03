import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'offline_timer_state.dart';
part 'offline_timer_cubit.freezed.dart';

class OfflineTimerCubit extends Cubit<OfflineTimerState> {
  OfflineTimerCubit() : super(const OfflineTimerState.initial());

  void updateMinuteOfNumberPicker(int minute) {
    emit(state.copyWith(
        minuteOfNumberPicker: minute, timerDuration: Duration(minutes: minute, hours: state.hourOfNumberPicker)));
  }

  void updateHourOfNumberPicker(int hour) {
    emit(state.copyWith(
        hourOfNumberPicker: hour, timerDuration: Duration(minutes: state.minuteOfNumberPicker, hours: hour)));
  }

  void startTimer() {
    emit(state.copyWith(isStop: false));
  }

  void stopTimer() {
    emit(state.copyWith(isStop: true));
  }

  void updateDurationOfTimer(int hours, int minutes) {
    emit(state.copyWith(timerDuration: Duration(hours: hours, minutes: minutes)));
  }
}
