import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'timer_state.dart';
part 'timer_cubit.freezed.dart';

class TimerCubit extends Cubit<TimerState> {
  TimerCubit() : super(const TimerState.initial());

  void updateSecondOfNumberPicker(int seconds) {
    emit(state.copyWith(
        secondOfNumberPicker: seconds,
        timerDuration: Duration(
          minutes: state.minuteOfNumberPicker,
          hours: state.hourOfNumberPicker,
          seconds: seconds,
        )));
  }

  void updateMinuteOfNumberPicker(int minute) {
    emit(state.copyWith(
        minuteOfNumberPicker: minute,
        timerDuration: Duration(
          minutes: minute,
          hours: state.hourOfNumberPicker,
          seconds: state.secondOfNumberPicker,
        )));
  }

  void updateHourOfNumberPicker(int hour) {
    emit(state.copyWith(
        hourOfNumberPicker: hour,
        timerDuration: Duration(
          minutes: state.minuteOfNumberPicker,
          hours: hour,
          seconds: state.secondOfNumberPicker,
        )));
  }

  void startTimer() {
    emit(state.copyWith(isStop: false, isReseted: false));
  }

  void stopTimer() {
    emit(state.copyWith(isStop: true));
  }

  void resetTimer() {
    emit(state.copyWith(isReseted: true, isStop: true));
  }

  void updateSpentFocusedTimeInstantly(Duration duration) {
    emit(state.copyWith(spentFocusedTime: duration));
  }
}
