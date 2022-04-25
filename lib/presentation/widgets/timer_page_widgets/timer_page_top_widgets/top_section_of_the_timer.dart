import 'package:flutter/material.dart';
import 'package:piva/application/timer/timer_cubit.dart';
import 'package:piva/presentation/widgets/custom_ui_widgets/rounded_timer/rounded_timer.dart';

class TopSectionOfTheTimer extends StatelessWidget {
  const TopSectionOfTheTimer({Key? key, required this.state}) : super(key: key);

  final TimerState state;

  @override
  Widget build(BuildContext context) {
    String progressTextFormatter(Duration d) => "${d.inHours % 60}:${d.inMinutes % 60}:${(d.inSeconds % 60).toString().padLeft(2, "0")}";
    final int secondsOfDuration = state.remainingOfTimerDuration == 0 ? state.durationOfTimer.inSeconds : state.remainingOfTimerDuration;
    final secondsInTermsOfDuration = Duration(seconds: secondsOfDuration);
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      height: 200,
      width: 200,
      child: RoundedTimer(
        time: progressTextFormatter(secondsInTermsOfDuration),
        textStyle: const TextStyle(fontSize: 35),
      ),
    );
  }
}
