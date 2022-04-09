import 'package:flutter/material.dart';

AppBar timerPageAppBar() {
  return AppBar(
    backgroundColor: Colors.teal.withOpacity(0.55),
    title: const Text(
      "Timer",
      style: TextStyle(fontSize: 18),
    ),
    centerTitle: true,
  );
}
