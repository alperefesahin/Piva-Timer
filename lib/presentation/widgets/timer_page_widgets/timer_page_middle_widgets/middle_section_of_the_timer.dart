import 'package:flutter/material.dart';
import 'package:piva/infrastructure/localization/piva_localization.dart';
import 'package:piva/presentation/widgets/timer_page_widgets/timer_page_middle_widgets/number_picker.dart';
import 'package:piva/application/timer/timer_cubit.dart';

class MiddleSectionOfTheTimer extends StatefulWidget {
  const MiddleSectionOfTheTimer({
    Key? key,
    required this.state,
  }) : super(key: key);
  final TimerState state;

  @override
  State<MiddleSectionOfTheTimer> createState() => _MiddleSectionOfTheTimerState();
}

class _MiddleSectionOfTheTimerState extends State<MiddleSectionOfTheTimer> with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 1, milliseconds: 500),
    vsync: this,
  )..repeat(reverse: true);

  late final Animation<double> _animation = CurvedAnimation(parent: _controller, curve: Curves.easeOutQuad);

  _MiddleSectionOfTheTimerState();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final _localization = PivaLocalizations.of(context);
    return widget.state.isTimerReset
        ? NumberPickerToSetTime(
            hourOfNumberPicker: widget.state.hourOfNumberPicker,
            minuteOfNumberPicker: widget.state.minuteOfNumberPicker,
            secondOfNumberPicker: widget.state.secondOfNumberPicker,
          )
        : FadeTransition(
            opacity: _animation,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: MediaQuery.of(context).size.height / 7,
                child: Center(
                  child: Text(
                    widget.state.isTimersDurationUp ? _localization.workingTimeCompletedText : _localization.workingTimeText,
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 19),
                  ),
                ),
              ),
            ),
          );
  }
}
