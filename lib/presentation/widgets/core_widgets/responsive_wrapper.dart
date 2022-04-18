import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ResponsiveWrapperWidget extends StatelessWidget {
  const ResponsiveWrapperWidget({Key? key, required this.widget}) : super(key: key);
  final Widget widget;
  @override
  Widget build(BuildContext context) {
    return ResponsiveWrapper.builder(
      BouncingScrollWrapper.builder(context, widget),
      maxWidth: 2460,
      minWidth: 420,
      defaultScale: true,
      breakpoints: const [
        ResponsiveBreakpoint.resize(480, name: MOBILE),
        ResponsiveBreakpoint.autoScale(800, name: TABLET),
        ResponsiveBreakpoint.resize(1000, name: DESKTOP),
      ],
    );
  }
}
