import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:piva/application/timer/timer_cubit.dart';
import 'package:piva/presentation/widgets/animation_widgets.dart/middle_section_of_the_timer.dart';
import 'package:piva/presentation/widgets/constants/rounded_button.dart';

import 'package:piva/presentation/widgets/timer_page_widgets/timer_page_widgets.dart';
import 'package:simple_timer/simple_timer.dart' as timer_widget;

class TimerPageBody extends StatelessWidget {
  const TimerPageBody({
    Key? key,
    required this.state,
    required this.timerController,
  }) : super(key: key);
  final timer_widget.TimerController timerController;
  final TimerState state;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      children: [
        SizedBox(
          height: size.height / 18,
        ),
        SizedBox(
          height: 200,
          width: 200,
          child: timer_widget.SimpleTimer(
              valueListener: (timeElapsed) {
                context.read<TimerCubit>().updateSpentFocusedTimeInstantly(timeElapsed);
              },
              progressIndicatorColor: Colors.transparent,
              controller: timerController,
              progressTextFormatter: (Duration d) => "${d.inHours % 60}:${d.inMinutes % 60}:${(d.inSeconds % 60).toString().padLeft(2, "0")}",
              progressTextStyle: const TextStyle(fontSize: 35),
              duration: state.timerDuration),
        ),
        MiddleSectionOfTheTimer(
          state: state,
          timerController: timerController,
        ),
        Expanded(
            child: Stack(
          children: [
            TimerPageBodyWaveAnimation(
              state: state,
            ),
            state.isStop
                ? Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Center(
                        child: RoundedButton(
                            text: "Start",
                            onTap: () {
                              if (state.timerDuration != Duration.zero) {
                                context.read<TimerCubit>().startTimer();
                              } else if (state.timerIsZero) {
                                timerIsZeroError(context);
                              }
                            })))
                : Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Center(
                        child: RoundedButton(
                      text: "Stop",
                      onTap: () {
                        context.read<TimerCubit>().stopTimer();
                      },
                    )),
                  )
          ],
        ))
      ],
    );
  }
}
