import 'package:flutter/material.dart';
import 'package:piva/presentation/pages/timer_page/timer_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(debugShowCheckedModeBanner: false, title: 'Piva', home: TimerPage());
  }
}
