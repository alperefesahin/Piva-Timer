import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:piva/application/timer/timer_cubit.dart';
import 'package:piva/infrastructure/notification/notification_api.dart';
import 'package:piva/presentation/widgets/timer_page_widgets/constants/constantTexts.dart';
import 'package:simple_timer/simple_timer.dart' as timer_widget;

class TopSectionOfTheTimer extends StatelessWidget {
  const TopSectionOfTheTimer({Key? key, required this.timerController, required this.state}) : super(key: key);
  final timer_widget.TimerController timerController;
  final TimerState state;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: 200,
      child: timer_widget.SimpleTimer(
          onEnd: () {
            NotificationApi.showNotification(title: timeIsUpTitle, body: timeIsUpBody);
            context.read<TimerCubit>().resetTimer();
          },
          valueListener: (timeElapsed) {
            context.read<TimerCubit>().updateSpentFocusedTimeInstantly(timeElapsed);
          },
          progressIndicatorColor: Colors.transparent,
          controller: timerController,
          progressTextFormatter: (Duration d) => "${d.inHours % 60}:${d.inMinutes % 60}:${(d.inSeconds % 60).toString().padLeft(2, "0")}",
          progressTextStyle: const TextStyle(fontSize: 35),
          duration: state.timerDuration),
    );
  }
}
