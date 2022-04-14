import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:piva/application/localization/localization_cubit.dart';
import 'package:piva/infrastructure/notification/localization/piva_localization_delegate.dart';
import 'package:piva/presentation/pages/timer_page/timer_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LocalizationCubit, LocalizationState>(
      builder: (context, state) {
        return MaterialApp(
          locale: state.appLanguage,
          localizationsDelegates: const [
            PivaLocalizationsDelegate(),
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: const [
            Locale('en'),
            Locale('tr'),
          ],
          debugShowCheckedModeBanner: false,
          title: 'Piva',
          home: const TimerPage(),
        );
      },
    );
  }
}
