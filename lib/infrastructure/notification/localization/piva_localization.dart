import 'package:flutter/material.dart';
import 'package:piva/infrastructure/notification/localization/localized_values.dart';
import 'package:format/format.dart';

class PivaLocalizations {
  PivaLocalizations(this.locale);

  final Locale locale;

  static PivaLocalizations of(BuildContext context) {
    return Localizations.of<PivaLocalizations>(context, PivaLocalizations)!;
  }

  static List<String> languages() => localizedValues.keys.toList();

  Map<String, String> get localeValues => localizedValues[locale.languageCode]!;

  String get pivaTimer => localeValues['pivaTimer']!;

  String get timeIsUpTitle => localeValues['timeIsUpTitle']!;

  String get timeIsUpBody => localeValues['timeIsUpBody']!;

  String get reset => localeValues['reset']!;

  String get stop => localeValues['stop']!;

  String get start => localeValues['start']!;

  String get hours => localeValues['hours']!;

  String get minutes => localeValues['minutes']!;

  String get seconds => localeValues['seconds']!;

  String workingTimeText(String hours, String minutes, String seconds) => localeValues['workingTimeText']!.format(hours, minutes, seconds);

  String get timeIsZero => localeValues['timeIsZero']!;
}
