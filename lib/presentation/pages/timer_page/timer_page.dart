import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:piva/application/cubit/offline_timer/offline_timer_cubit.dart';

import 'package:piva/presentation/widgets/timer_page_widgets/timer_page_body.dart';
import 'package:simple_timer/simple_timer.dart';

class TimerPage extends StatefulWidget {
  const TimerPage({
    Key? key,
  }) : super(key: key);

  @override
  State<TimerPage> createState() => _TimerPageState();
}

class _TimerPageState extends State<TimerPage> with SingleTickerProviderStateMixin {
  TimerController? timerController;
  @override
  void initState() {
    timerController = TimerController(this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OfflineTimerCubit(),
      child: BlocConsumer<OfflineTimerCubit, OfflineTimerState>(
        listener: (context, state) {
          timerController!.duration = state.timerDuration;
          if (state.isStop) {
            timerController!.pause();
          } else if (!state.isStop) {
            timerController!.start();
          }
        },
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.teal,
              title: const AutoSizeText(
                "Timer",
                maxLines: 1,
                minFontSize: 16,
                maxFontSize: 19,
              ),
              centerTitle: true,
            ),
            backgroundColor: Colors.white,
            body: TimerPageBody(
              state: state,
              timerController: timerController!,
            ),
          );
        },
      ),
    );
  }
}
