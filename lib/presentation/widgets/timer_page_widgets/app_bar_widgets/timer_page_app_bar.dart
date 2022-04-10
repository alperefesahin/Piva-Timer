import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:piva/presentation/widgets/timer_page_widgets/constants/constantTexts.dart';

PlatformAppBar timerPageAppBar(BuildContext context) {
  return PlatformAppBar(
    backgroundColor: Colors.teal.withOpacity(0.55),
    title: const Text(pivaTimer,
        style: TextStyle(
          fontSize: 18,
        ),
        textAlign: TextAlign.center),
    material: (c, t) => MaterialAppBarData(centerTitle: true),
    cupertino: (c, t) => CupertinoNavigationBarData(automaticallyImplyMiddle: true),
  );
}
