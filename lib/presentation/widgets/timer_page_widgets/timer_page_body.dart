import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:piva/presentation/widgets/constants/wave_animation/rounded_button/rounded_button.dart';

import 'package:piva/presentation/widgets/timer_page_widgets/timer_page_widgets.dart';
import 'package:simple_timer/simple_timer.dart';

class TimerPageBody extends StatelessWidget {
  const TimerPageBody({
    Key? key,
  }) : super(key: key);

  format(Duration d) => d.toString().split('.').first.padLeft(8, "0");

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final bool keyboardOpen = MediaQuery.of(context).viewInsets.bottom > 0;
    return Column(
      children: [
        SizedBox(
          height: size.height / 18,
        ),
        SizedBox(
          height: 200,
          width: 200,
          child: SimpleTimer(
              progressTextFormatter: (Duration d) =>
                  "${d.inHours % 60}:${d.inMinutes % 60}:${(d.inSeconds % 60).toString().padLeft(2, "0")}",
              progressTextStyle: const TextStyle(fontSize: 35),
              status: TimerStatus.pause,
              duration: const Duration(hours: 1, minutes: 3)),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  const Text(
                    "Hours",
                    style: TextStyle(fontSize: 23),
                  ),
                  NumberPicker(
                      itemCount: 2,
                      itemHeight: 35,
                      minValue: 0,
                      maxValue: 24,
                      value: 0,
                      onChanged: (int value) {}),
                ],
              ),
              Column(
                children: [
                  const Text(
                    "Minutes",
                    style: TextStyle(fontSize: 23),
                  ),
                  NumberPicker(
                      itemCount: 2,
                      itemHeight: 35,
                      minValue: 1,
                      maxValue: 60,
                      value: 1,
                      onChanged: (int value) {}),
                ],
              ),
            ],
          ),
        ),
        Expanded(
            child: Stack(
          children: [
            TimerPageBodyWaveAnimation(
              size: size,
              keyboardOpen: keyboardOpen,
              value: 13,
            ),
            const Padding(
              padding: EdgeInsets.only(top: 50),
              child: Center(child: RoundedButton(text: "Start")),
            ),
          ],
        ))
      ],
    );
  }
}
