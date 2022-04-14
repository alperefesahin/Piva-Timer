import 'package:flutter/material.dart';
import 'package:piva/application/timer/timer_cubit.dart';
import 'package:piva/presentation/widgets/timer_page_widgets/custom_ui_widgets/rounded_button.dart';

class TimerPageButton extends StatelessWidget {
  const TimerPageButton({
    Key? key,
    required this.state,
    required this.buttonText,
    required this.buttonOnTap,
    required this.width,
    required this.height,
    required this.padding,
  }) : super(key: key);
  final TimerState state;
  final String buttonText;
  final VoidCallback buttonOnTap;
  final double? width;
  final double? height;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: padding,
        child: Center(
            child: RoundedButton(
          text: buttonText,
          onTap: buttonOnTap,
          width: width,
          height: height,
        )));
  }
}
