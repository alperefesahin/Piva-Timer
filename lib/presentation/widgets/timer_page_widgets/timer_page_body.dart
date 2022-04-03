import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:piva/application/cubit/offline_timer/offline_timer_cubit.dart';
import 'package:piva/presentation/widgets/constants/wave_animation/rounded_button/rounded_button.dart';

import 'package:piva/presentation/widgets/timer_page_widgets/timer_page_widgets.dart';
import 'package:simple_timer/simple_timer.dart';

class TimerPageBody extends StatelessWidget {
  const TimerPageBody({
    Key? key,
    required this.state,
    required this.timerController,
  }) : super(key: key);
  final TimerController timerController;
  final OfflineTimerState state;
/* 
  format(Duration d) => d.toString().split('.').first.padLeft(8, "0"); */

  @override
  Widget build(BuildContext context) {
    print("minute" + state.minuteOfNumberPicker.toString());
    print("hour" + state.hourOfNumberPicker.toString());
    print("timer duration" + state.timerDuration.toString());

    final size = MediaQuery.of(context).size;
    final bool keyboardOpen = MediaQuery.of(context).viewInsets.bottom > 0;

    return Column(
      children: [
        SizedBox(
          height: size.height / 18,
        ),
        SizedBox(
          height: 200,
          width: 200,
          child: SimpleTimer(
              controller: timerController,
              progressTextFormatter: (Duration d) =>
                  "${d.inHours % 60}:${d.inMinutes % 60}:${(d.inSeconds % 60).toString().padLeft(2, "0")}",
              progressTextStyle: const TextStyle(fontSize: 35),
              duration: state.timerDuration),
        ),
        state.isStop
            ? Padding(
                padding: const EdgeInsets.only(top: 25.0),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height / 7,
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
                              value: state.hourOfNumberPicker,
                              onChanged: (int hour) {
                                context.read<OfflineTimerCubit>().updateHourOfNumberPicker(hour);
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
                              value: state.minuteOfNumberPicker,
                              onChanged: (int minute) {
                                context.read<OfflineTimerCubit>().updateMinuteOfNumberPicker(minute);
                              }),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            : Padding(
                padding: const EdgeInsets.only(top: 25.0),
                child: SizedBox(
                    height: MediaQuery.of(context).size.height / 7, child: const Center(child: Text("Focusing..."))),
              ),
        Expanded(
            child: Stack(
          children: [
            TimerPageBodyWaveAnimation(
              size: size,
              keyboardOpen: keyboardOpen,
              value: 13,
            ),
            state.isStop
                ? Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Center(
                        child: RoundedButton(
                            text: "Start",
                            onTap: () {
                              context.read<OfflineTimerCubit>().startTimer();
                            })))
                : Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Center(
                        child: RoundedButton(
                      text: "Stop",
                      onTap: () {
                        context.read<OfflineTimerCubit>().stopTimer();
                      },
                    )),
                  )
          ],
        ))
      ],
    );
  }
}
