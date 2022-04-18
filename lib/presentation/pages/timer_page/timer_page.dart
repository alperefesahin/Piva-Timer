import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:piva/application/timer/timer_cubit.dart';
import 'package:piva/infrastructure/localization/piva_localization.dart';
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
    FlutterNativeSplash.remove();
  }

  @override
  Widget build(BuildContext context) {
    final _localization = PivaLocalizations.of(context);

    return BlocProvider(
      create: (context) => TimerCubit(),
      child: BlocConsumer<TimerCubit, TimerState>(
        listener: (context, state) {
          timerController!.duration = state.durationOfTimer;

          if (state.isTimerReseted) {
            timerController!.reset();
            NotificationApi.notifications.cancelAll();
          }
          if (state.isTimerStopped) {
            timerController!.stop();
            NotificationApi.notifications.cancelAll();
          } else if (!state.isTimerStopped) {
            final notificationDuration = (timerController!.duration! - state.spentFocusedTime).inMicroseconds;
            timerController!.start();
            NotificationApi.zonedScheduleNotification(title: _localization.timeIsUpTitle, body: _localization.timeIsUpBody, microSeconds: notificationDuration);
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
