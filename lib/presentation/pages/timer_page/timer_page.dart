import 'package:flutter/material.dart';

import 'package:piva/presentation/widgets/timer_page_widgets/timer_page_body.dart';

class TimerPage extends StatelessWidget {
  const TimerPage({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);
    final scale = mediaQueryData.textScaleFactor.clamp(0.8, 1.35);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaleFactor: scale),
          child: const Text(
            "Timer",
            style: TextStyle(
              fontSize: 19,
            ),
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: const TimerPageBody(),
    );
  }
}
