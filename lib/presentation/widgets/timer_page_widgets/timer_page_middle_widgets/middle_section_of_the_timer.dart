import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:simple_timer/simple_timer.dart' as timer_widget;

import 'package:piva/application/timer/timer_cubit.dart';

class MiddleSectionOfTheTimer extends StatefulWidget {
  const MiddleSectionOfTheTimer({
    Key? key,
    required this.state,
    required this.timerController,
  }) : super(key: key);
  final TimerState state;
  final timer_widget.TimerController timerController;
  @override
  State<MiddleSectionOfTheTimer> createState() => _MiddleSectionOfTheTimerState();
}

class _MiddleSectionOfTheTimerState extends State<MiddleSectionOfTheTimer> with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 1, milliseconds: 500),
    vsync: this,
  )..repeat(reverse: true);
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.easeOutQuad,
  );

  _MiddleSectionOfTheTimerState();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final int workingMinutes = widget.state.spentFocusedTime.inMinutes % 60;
    final int workingSeconds = widget.state.spentFocusedTime.inSeconds % 60;

    return widget.state.isReseted
        ? Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: MediaQuery.of(context).size.height / 6.5,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      const Text(
                        "Hours",
                        style: TextStyle(fontSize: 23),
                      ),
                      NumberPicker(
                          itemCount: 3,
                          itemHeight: 25,
                          minValue: 0,
                          maxValue: 23,
                          value: widget.state.hourOfNumberPicker,
                          onChanged: (int hour) {
                            context.read<TimerCubit>().updateHourOfNumberPicker(hour);
                          }),
                    ],
                  ),
                  Column(
                    children: [
                      const Text(
                        "Minutes",
                        style: TextStyle(fontSize: 23),
                      ),
                      NumberPicker(
                          itemCount: 3,
                          itemHeight: 25,
                          minValue: 0,
                          maxValue: 59,
                          value: widget.state.minuteOfNumberPicker,
                          onChanged: (int minute) {
                            context.read<TimerCubit>().updateMinuteOfNumberPicker(minute);
                          }),
                    ],
                  ),
                  Column(
                    children: [
                      const Text(
                        "Seconds",
                        style: TextStyle(fontSize: 23),
                      ),
                      NumberPicker(
                          itemCount: 3,
                          itemHeight: 25,
                          minValue: 0,
                          maxValue: 59,
                          value: widget.state.secondOfNumberPicker,
                          onChanged: (int seconds) {
                            context.read<TimerCubit>().updateSecondOfNumberPicker(seconds);
                          }),
                    ],
                  ),
                ],
              ),
            ),
          )
        : FadeTransition(
            opacity: _animation,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                  height: MediaQuery.of(context).size.height / 7,
                  child: Center(
                      child: Text(
                    "You are working for $workingMinutes minutes and $workingSeconds seconds...",
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 19),
                  ))),
            ));
  }
}
