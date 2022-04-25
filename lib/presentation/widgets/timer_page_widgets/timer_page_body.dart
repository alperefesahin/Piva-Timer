import 'package:flutter/material.dart';
import 'package:piva/application/timer/timer_cubit.dart';
import 'package:piva/presentation/widgets/timer_page_widgets/timer_page_bottom_widgets/bottom_section_of_the_timer.dart';
import 'package:piva/presentation/widgets/timer_page_widgets/timer_page_middle_widgets/middle_section_of_the_timer.dart';

import 'package:piva/presentation/widgets/timer_page_widgets/timer_page_top_widgets/top_section_of_the_timer.dart';

class TimerPageBody extends StatelessWidget {
  const TimerPageBody({
    Key? key,
    required this.state,
  }) : super(key: key);
  final TimerState state;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      children: [
        SizedBox(height: size.height / 18),
        TopSectionOfTheTimer(state: state),
        MiddleSectionOfTheTimer(state: state),
        BottomSectionOfTheTimer(state: state),
      ],
    );
  }
}
