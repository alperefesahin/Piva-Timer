import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:piva/application/timer/timer_cubit.dart';
import 'package:piva/presentation/widgets/timer_page_widgets/timer_page_app_bar.dart';

import 'package:piva/presentation/widgets/timer_page_widgets/timer_page_body.dart';
import 'package:simple_timer/simple_timer.dart' as timer_widget;

class TimerPage extends StatefulWidget {
  const TimerPage({
    Key? key,
  }) : super(key: key);

  @override
  State<TimerPage> createState() => _TimerPageState();
}

class _TimerPageState extends State<TimerPage> with SingleTickerProviderStateMixin {
  timer_widget.TimerController? timerController;
  @override
  void initState() {
    timerController = timer_widget.TimerController(this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TimerCubit(),
      child: BlocConsumer<TimerCubit, TimerState>(
        listener: (context, state) {
          timerController!.duration = state.timerDuration;
          if (state.isReseted) {
            timerController!.reset();
          }
          if (state.isStop) {
            timerController!.pause();
          } else if (!state.isStop) {
            timerController!.start();
          }
        },
        builder: (context, state) {
          return Scaffold(
            appBar: timerPageAppBar(),
            backgroundColor: Colors.white,
            body: TimerPageBody(state: state, timerController: timerController!),
          );
        },
      ),
    );
  }
}
