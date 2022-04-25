import 'package:flutter/material.dart';
import 'package:piva/infrastructure/localization/localized_values.dart';

class PivaLocalizations {
  PivaLocalizations(this.locale);

  final Locale locale;

  static PivaLocalizations of(BuildContext context) {
    return Localizations.of<PivaLocalizations>(context, PivaLocalizations)!;
  }

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

  String get workingTimeText => localeValues['workingTimeText']!;

  String get workingTimeCompletedText => localeValues['workingTimeCompletedText']!;

  String get timeIsZero => localeValues['timeIsZero']!;
}
