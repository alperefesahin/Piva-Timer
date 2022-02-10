import 'package:flutter/material.dart';

import 'package:piva/presentation/widgets/constants/wave_animation/wave_animation.dart';

class TimerPageBodyWaveAnimation extends StatelessWidget {
  const TimerPageBodyWaveAnimation({
    Key? key,
    required this.size,
    required this.keyboardOpen,
    required this.value,
  }) : super(key: key);

  final Size size;
  final bool keyboardOpen;
   final int value;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: size.height,
        ),
        AnimatedPositioned(
          duration: const Duration(milliseconds: 800),
          curve: Curves.easeOutQuad,
          top: keyboardOpen ? -size.height / 3.7 : 0.0,
          child: WaveWidget(
              size: size, yOffset: size.height / value, color: Colors.teal),
        ),
      ],
    );
  }
}
