import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:piva/application/timer/timer_cubit.dart';
import 'package:piva/domain/ticker/ticker.dart';
import 'package:piva/infrastructure/notification/notification_api.dart';
import 'package:piva/presentation/widgets/app_bar_widgets/timer_page_app_bar.dart';
import 'package:piva/presentation/widgets/timer_page_widgets/timer_page_body.dart';

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
  @override
  void initState() {
    super.initState();

    NotificationApi.init(initScheduled: true);
    FlutterNativeSplash.remove();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TimerCubit(ticker: const Ticker()),
      child: BlocBuilder<TimerCubit, TimerState>(
        builder: (context, state) {
          return SafeArea(
            child: PlatformScaffold(
              appBar: timerPageAppBar(context),
              backgroundColor: Colors.white,
              body: TimerPageBody(state: state),
            ),
          );
        },
      ),
    );
  }
}
