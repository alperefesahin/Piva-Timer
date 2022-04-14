import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:piva/infrastructure/notification/localization/piva_localization.dart';

class PivaLocalizationsDelegate extends LocalizationsDelegate<PivaLocalizations> {
  const PivaLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => true;

  @override
  Future<PivaLocalizations> load(Locale locale) {
    return SynchronousFuture<PivaLocalizations>(PivaLocalizations(locale));
  }

  @override
  bool shouldReload(PivaLocalizationsDelegate old) => false;
}
