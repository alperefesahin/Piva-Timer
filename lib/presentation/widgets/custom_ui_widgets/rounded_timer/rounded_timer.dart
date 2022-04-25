import 'package:flutter/material.dart';
import 'package:piva/presentation/widgets/custom_ui_widgets/rounded_timer/timer_painter.dart';

class RoundedTimer extends StatelessWidget {
  const RoundedTimer({Key? key, required this.time, required this.textStyle}) : super(key: key);
  final String time;
  final TextStyle textStyle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Align(
          alignment: FractionalOffset.center,
          child: AspectRatio(
            aspectRatio: 1,
            child: Stack(
              children: [
                CustomPaint(
                  size: MediaQuery.of(context).size,
                  painter: TimerPainter(),
                ),
                Align(
                  alignment: FractionalOffset.center,
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(time, style: textStyle),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
