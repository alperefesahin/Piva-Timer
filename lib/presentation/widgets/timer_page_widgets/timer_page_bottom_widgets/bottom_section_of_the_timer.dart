import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:piva/application/timer/timer_cubit.dart';
import 'package:piva/infrastructure/localization/piva_localization.dart';
import 'package:piva/presentation/widgets/custom_ui_widgets/timer_error_widget.dart';
import 'package:piva/presentation/widgets/timer_page_widgets/timer_page_bottom_widgets/timer_page_body_wave_animation.dart';
import 'package:piva/presentation/widgets/timer_page_widgets/timer_page_bottom_widgets/timer_page_button.dart';

class BottomSectionOfTheTimer extends StatelessWidget {
  const BottomSectionOfTheTimer({Key? key, required this.state}) : super(key: key);
  final TimerState state;
  @override
  Widget build(BuildContext context) {
    final _localization = PivaLocalizations.of(context);
    final defaultButtonWidth = MediaQuery.of(context).size.width / 4;
    final defaultButtonHeight = MediaQuery.of(context).size.height / 7;
    const buttonPadding = EdgeInsets.only(top: 40);

    return Expanded(
        child: Stack(
      children: [
        TimerPageBodyWaveAnimation(state: state),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            !state.isTimersDurationUp
                ? state.isTimerStopped
                    ? TimerPageButton(
                        state: state,
                        buttonText: _localization.start,
                        buttonOnTap: () {
                          if (!state.timerIsZero) {
                            context.read<TimerCubit>().startTimer();
                          } else {
                            timerIsZeroError(context);
                          }
                        },
                        width: defaultButtonWidth,
                        height: defaultButtonHeight,
                        padding: buttonPadding)
                    : TimerPageButton(
                        state: state,
                        buttonText: _localization.stop,
                        buttonOnTap: () {
                          context.read<TimerCubit>().stopTimer();
                        },
                        width: defaultButtonWidth,
                        height: defaultButtonHeight,
                        padding: buttonPadding)
                : Container(),
            TimerPageButton(
                state: state,
                buttonText: _localization.reset,
                buttonOnTap: () {
                  context.read<TimerCubit>().resetTimer();
                },
                width: state.isTimersDurationUp ? defaultButtonWidth : MediaQuery.of(context).size.width / 5,
                height: state.isTimersDurationUp ? defaultButtonHeight : MediaQuery.of(context).size.height / 12,
                padding: const EdgeInsets.only(top: 40, left: 10)),
          ],
        )
      ],
    ));
  }
}
