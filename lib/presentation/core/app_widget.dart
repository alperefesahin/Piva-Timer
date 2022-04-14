import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:piva/infrastructure/notification/localization/piva_localization_delegate.dart';
import 'package:piva/presentation/pages/timer_page/timer_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      localizationsDelegates: [
        PivaLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en', ''),
        Locale('tr', ''),
      ],
      debugShowCheckedModeBanner: false,
      title: 'Piva',
      home: TimerPage(),
    );
  }
}
