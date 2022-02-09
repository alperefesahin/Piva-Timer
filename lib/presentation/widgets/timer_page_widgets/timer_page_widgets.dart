import 'package:flutter/material.dart';
import 'package:piva/presentation/widgets/constants/wave_animation/wave_animation.dart';

class TimerPageBodyWaveAnimation extends StatelessWidget {
  const TimerPageBodyWaveAnimation({
    Key? key,
    required this.size,
    required this.keyboardOpen,
  }) : super(key: key);

  final Size size;
  final bool keyboardOpen;

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
              size: size, yOffset: size.height / 1.65, color: Colors.teal),
        ),
      ],
    );
  }
}
