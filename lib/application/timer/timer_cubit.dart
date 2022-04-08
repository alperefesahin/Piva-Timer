import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'timer_state.dart';
part 'timer_cubit.freezed.dart';

class TimerCubit extends Cubit<TimerState> {
  TimerCubit() : super(const TimerState.initial());
  void updateMinuteOfNumberPicker(int minute) {
    emit(state.copyWith(
        minuteOfNumberPicker: minute,
        timerDuration: Duration(
          minutes: minute,
          hours: state.hourOfNumberPicker,
          seconds: 0,
        )));
  }

  void updateHourOfNumberPicker(int hour) {
    emit(state.copyWith(hourOfNumberPicker: hour, timerDuration: Duration(minutes: state.minuteOfNumberPicker, hours: hour)));
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

  void updateSpentFocusedTimeInstantly(Duration duration) {
    emit(state.copyWith(spentFocusedTime: duration.inSeconds));
  }
}
