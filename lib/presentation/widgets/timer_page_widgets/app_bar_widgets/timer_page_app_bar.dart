import 'package:flutter/material.dart';
import 'package:piva/presentation/widgets/timer_page_widgets/constants/constantTexts.dart';

AppBar timerPageAppBar() {
  return AppBar(
    backgroundColor: Colors.teal.withOpacity(0.55),
    title: const Text(
      pivaTimer,
      style: TextStyle(fontSize: 18),
    ),
    centerTitle: true,
  );
}
