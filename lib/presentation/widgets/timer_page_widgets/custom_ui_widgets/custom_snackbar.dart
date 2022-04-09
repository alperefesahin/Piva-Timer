import 'package:flutter/material.dart';

void timerIsZeroError(context) {
  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
    content: Text("The time can not be zero!"),
    backgroundColor: Colors.red,
  ));
}
