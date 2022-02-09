import 'package:flutter/material.dart';

import 'package:piva/presentation/widgets/timer_page_widgets/timer_page_widgets.dart';

class TimerPageBody extends StatelessWidget {
  const TimerPageBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final bool keyboardOpen = MediaQuery.of(context).viewInsets.bottom > 0;
    return TimerPageBodyWaveAnimation(size: size, keyboardOpen: keyboardOpen);
  }
}
