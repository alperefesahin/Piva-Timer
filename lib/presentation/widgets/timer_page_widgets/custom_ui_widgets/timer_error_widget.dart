import 'package:flutter/material.dart';
import 'package:piva/infrastructure/notification/localization/piva_localization.dart';

void timerIsZeroError(context) {
  final _localization = PivaLocalizations.of(context);
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(_localization.timeIsZero),
    backgroundColor: Colors.red,
  ));
}
