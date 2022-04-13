import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:piva/application/timer/timer_cubit.dart';
import 'package:piva/infrastructure/notification/notification_api.dart';
import 'package:piva/presentation/widgets/timer_page_widgets/app_bar_widgets/timer_page_app_bar.dart';

import 'package:piva/presentation/widgets/timer_page_widgets/timer_page_body.dart';
import 'package:simple_timer/simple_timer.dart' as timer_widget;

class TimerPage extends StatefulWidget {
  const TimerPage({
    Key? key,
    this.payload,
  }) : super(key: key);
  final String? payload;
  @override
  State<TimerPage> createState() => _TimerPageState();
}

class _TimerPageState extends State<TimerPage> with SingleTickerProviderStateMixin {
  timer_widget.TimerController? timerController;
  @override
  void initState() {
    super.initState();

    timerController = timer_widget.TimerController(this);
    NotificationApi.init(initScheduled: true);
    listenNotifications();
    FlutterNativeSplash.remove();
  }

  void listenNotifications() => NotificationApi.onNotifications.listen(onClickedNotification);
  void onClickedNotification(String? payload) => Navigator.of(context).push(MaterialPageRoute(builder: (context) => TimerPage(payload: payload)));
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
            timerController!.stop();
          } else if (!state.isStop) {
            timerController!.start();
          }
        },
        builder: (context, state) {
          return PlatformScaffold(
            appBar: timerPageAppBar(context),
            backgroundColor: Colors.white,
            body: TimerPageBody(state: state, timerController: timerController!),
          );
        },
      ),
    );
  }
}
