import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:piva/domain/ticker/ticker.dart';
import 'package:piva/infrastructure/notification/notification_api.dart';

part 'timer_state.dart';
part 'timer_cubit.freezed.dart';

class TimerCubit extends Cubit<TimerState> {
  TimerCubit({required Ticker ticker})
      : _ticker = ticker,
        super(const TimerState.initial());

  final Ticker _ticker;
  StreamSubscription<int>? _tickerSubscription;

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

  void startTimer({required String title, required String body}) {
    _tickerSubscription = _ticker.tick(ticks: state.durationOfTimer.inSeconds).listen((int remainingOfTimerDuration) {
      emit(state.copyWith(remainingOfTimerDuration: remainingOfTimerDuration));
      if (remainingOfTimerDuration == 0) {
        emit(state.copyWith(isTimersDurationUp: true, isTimerResumed: false));
      }
    });
    emit(state.copyWith(
      isTimerStopped: false,
      isTimerReset: false,
      isTimerResumed: true,
      isTimersDurationUp: false,
    ));
    NotificationApi.zonedScheduleNotification(
      title: title,
      body: body,
      seconds: state.durationOfTimer.inSeconds,
    );
  }

  void resumeTimer({required String title, required String body}) {
    NotificationApi.zonedScheduleNotification(
      title: title,
      body: body,
      seconds: state.remainingOfTimerDuration,
    );
    _tickerSubscription?.resume();
    emit(state.copyWith(isTimerResumed: true, isTimerStopped: false));
  }

  void stopTimer() {
    _tickerSubscription?.pause();
    NotificationApi.notifications.cancelAll();
    emit(state.copyWith(isTimerStopped: true, isTimerResumed: false));
  }

  void resetTimer() {
    _tickerSubscription?.cancel();
    NotificationApi.notifications.cancelAll();
    emit(state.copyWith(remainingOfTimerDuration: 0, isTimerReset: true, isTimersDurationUp: false, isTimerResumed: false, isTimerStopped: false));
  }
}
