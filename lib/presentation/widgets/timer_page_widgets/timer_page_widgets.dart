import 'package:flutter/material.dart';
import 'package:piva/application/cubit/offline_timer/offline_timer_cubit.dart';

import 'package:piva/presentation/widgets/constants/wave_animation/wave_animation.dart';

class TimerPageBodyWaveAnimation extends StatelessWidget {
  const TimerPageBodyWaveAnimation({
    Key? key,
    required this.size,
    required this.keyboardOpen,
    required this.state,
  }) : super(key: key);

  final Size size;
  final bool keyboardOpen;

  final OfflineTimerState state;

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
          child:
              WaveWidget(size: size, yOffset: !state.isStop ? size.height / 10 : size.height / 4, color: Colors.teal),
        )
      ],
    );
  }
}

void timerIsZeroError(context) {
  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
    content: Text("The time can not be zero!"),
    backgroundColor: Colors.red,
  ));
}
