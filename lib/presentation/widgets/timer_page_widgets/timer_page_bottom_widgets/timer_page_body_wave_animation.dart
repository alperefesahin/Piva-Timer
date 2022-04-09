import 'package:flutter/material.dart';
import 'package:piva/application/timer/timer_cubit.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

class TimerPageBodyWaveAnimation extends StatelessWidget {
  const TimerPageBodyWaveAnimation({
    Key? key,
    required this.state,
  }) : super(key: key);

  final TimerState state;

  @override
  Widget build(BuildContext context) {
    const Color transparentColor = Color.fromRGBO(0, 0, 0, 0);
    return AnimatedOpacity(
      opacity: (state.isReseted ? 0.5 : 0.9),
      duration: const Duration(milliseconds: 900),
      child: WaveWidget(
        config: CustomConfig(
          gradients: const [
            [transparentColor, transparentColor],
            [transparentColor, transparentColor],
            [Color.fromARGB(223, 0, 40, 150), Color.fromARGB(73, 0, 40, 150)],
            [Color(0xFF009688), Color.fromARGB(36, 0, 150, 135)]
          ],
          durations: [35000, 194400, 18000, 5000],
          heightPercentages: [0, 0.23, (state.isReseted ? 0.087 : 0.51), (state.isReseted ? 0.1 : 0.5)],
          blur: const MaskFilter.blur(BlurStyle.solid, 12),
          gradientBegin: Alignment.bottomLeft,
          gradientEnd: Alignment.topRight,
        ),
        waveAmplitude: 0,
        size: const Size(
          double.infinity,
          double.infinity,
        ),
      ),
    );
  }
}

