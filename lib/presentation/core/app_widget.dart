import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:piva/application/localization/localization_cubit.dart';
import 'package:piva/infrastructure/localization/piva_localization_delegate.dart';
import 'package:piva/infrastructure/notification/notification_navigator.dart';
import 'package:piva/presentation/pages/timer_page/timer_page.dart';
import 'package:piva/presentation/widgets/core_widgets/responsive_wrapper.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LocalizationCubit, LocalizationState>(
      builder: (context, state) {
        return MaterialApp(
          navigatorKey: navigatorKey,
          locale: state.appLanguage,
          localizationsDelegates: const [
            PivaLocalizationsDelegate(),
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate
          ],
          supportedLocales: const [Locale('en'), Locale('tr')],
          debugShowCheckedModeBanner: false,
          title: 'Piva',
          builder: (context, widget) => ResponsiveWrapperWidget(widget: widget!),
          home: const TimerPage(),
        );
      },
    );
  }
}
