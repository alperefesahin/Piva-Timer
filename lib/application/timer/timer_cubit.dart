import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'timer_state.dart';
part 'timer_cubit.freezed.dart';

class TimerCubit extends Cubit<TimerState> {
  TimerCubit() : super(const TimerState.initial());

  void updateSecondOfNumberPicker(int seconds) {
    emit(state.copyWith(
        secondOfNumberPicker: seconds,
        durationOfTimer: Duration(
          minutes: state.minuteOfNumberPicker,
          hours: state.hourOfNumberPicker,
          seconds: seconds,
        )));
  }

  void updateMinuteOfNumberPicker(int minute) {
    emit(state.copyWith(
        minuteOfNumberPicker: minute,
        durationOfTimer: Duration(
          minutes: minute,
          hours: state.hourOfNumberPicker,
          seconds: state.secondOfNumberPicker,
        )));
  }

  void updateHourOfNumberPicker(int hour) {
    emit(state.copyWith(
        hourOfNumberPicker: hour,
        durationOfTimer: Duration(
          minutes: state.minuteOfNumberPicker,
          hours: hour,
          seconds: state.secondOfNumberPicker,
        )));
  }

  void startTimer() {
    emit(state.copyWith(isTimerStopped: false, isTimerReseted: false));
  }

  void stopTimer() {
    emit(state.copyWith(isTimerStopped: true, isTimerReseted: false));
  }

  void resetTimer() {
    emit(state.copyWith(isTimerReseted: true, isTimerStopped: true, isTimersDurationUp: false));
  }

  void updateSpentFocusedTimeInstantly(Duration duration) {
    emit(state.copyWith(spentFocusedTime: duration));
  }

  void updateStateOfTimersDurationUp() {
    emit(state.copyWith(isTimersDurationUp: true));
  }
}
