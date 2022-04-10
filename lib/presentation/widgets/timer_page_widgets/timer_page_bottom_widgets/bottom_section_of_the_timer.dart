import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:piva/application/timer/timer_cubit.dart';
import 'package:piva/presentation/widgets/timer_page_widgets/constants/constantTexts.dart';
import 'package:piva/presentation/widgets/timer_page_widgets/custom_ui_widgets/custom_snackbar.dart';
import 'package:piva/presentation/widgets/timer_page_widgets/custom_ui_widgets/rounded_button.dart';
import 'package:piva/presentation/widgets/timer_page_widgets/timer_page_bottom_widgets/timer_page_body_wave_animation.dart';

class BottomSectionOfTheTimer extends StatelessWidget {
  const BottomSectionOfTheTimer({Key? key, required this.state}) : super(key: key);
  final TimerState state;
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Stack(
      children: [
        TimerPageBodyWaveAnimation(
          state: state,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            state.isStop
                ? Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Center(
                        child: RoundedButton(
                      text: start,
                      onTap: () {
                        if (state.timerDuration != Duration.zero) {
                          context.read<TimerCubit>().startTimer();
                        } else if (state.timerIsZero) {
                          timerIsZeroError(context);
                        }
                      },
                      width: MediaQuery.of(context).size.width / 4,
                      height: MediaQuery.of(context).size.height / 7,
                    )))
                : Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Center(
                        child: RoundedButton(
                      text: stop,
                      onTap: () {
                        context.read<TimerCubit>().stopTimer();
                      },
                      width: MediaQuery.of(context).size.width / 4,
                      height: MediaQuery.of(context).size.height / 7,
                    )),
                  ),
            Padding(
              padding: const EdgeInsets.only(top: 50, left: 10),
              child: RoundedButton(
                text: reset,
                onTap: () {
                  context.read<TimerCubit>().resetTimer();
                },
                width: MediaQuery.of(context).size.width / 5,
                height: MediaQuery.of(context).size.height / 12,
              ),
            )
          ],
        )
      ],
    ));
  }
}
