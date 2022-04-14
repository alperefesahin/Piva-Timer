import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:piva/infrastructure/notification/localization/piva_localization.dart';

PlatformAppBar timerPageAppBar(BuildContext context) {
  final _localization = PivaLocalizations.of(context);
  return PlatformAppBar(
    leading: PlatformIconButton(
      onPressed: () {},
      icon: const Icon(Icons.translate),
    ),
    backgroundColor: Colors.teal.withOpacity(0.55),
    title: Text(
      _localization.pivaTimer,
      style: const TextStyle(
        fontSize: 18,
      ),
      textAlign: TextAlign.center,
    ),
    material: (c, t) => MaterialAppBarData(centerTitle: true),
    cupertino: (c, t) => CupertinoNavigationBarData(automaticallyImplyMiddle: true),
  );
}
