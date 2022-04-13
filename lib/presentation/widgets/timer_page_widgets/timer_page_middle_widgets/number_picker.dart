import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:piva/application/timer/timer_cubit.dart';
import 'package:piva/presentation/widgets/timer_page_widgets/constants/constantTexts.dart';

class NumberPickerToSetTime extends StatelessWidget {
  const NumberPickerToSetTime({Key? key, required this.hourOfNumberPicker, required this.minuteOfNumberPicker, required this.secondOfNumberPicker}) : super(key: key);
  final int hourOfNumberPicker;
  final int minuteOfNumberPicker;
  final int secondOfNumberPicker;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: MediaQuery.of(context).size.height / 6,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                const Text(
                  hours,
                  style: TextStyle(fontSize: 23),
                ),
                NumberPicker(
                    itemCount: 3,
                    itemHeight: 25,
                    minValue: 0,
                    maxValue: 23,
                    value: hourOfNumberPicker,
                    onChanged: (int hour) {
                      context.read<TimerCubit>().updateHourOfNumberPicker(hour);
                    }),
              ],
            ),
            Column(
              children: [
                const Text(
                  minutes,
                  style: TextStyle(fontSize: 23),
                ),
                NumberPicker(
                    itemCount: 3,
                    itemHeight: 25,
                    minValue: 0,
                    maxValue: 59,
                    value: minuteOfNumberPicker,
                    onChanged: (int minute) {
                      context.read<TimerCubit>().updateMinuteOfNumberPicker(minute);
                    }),
              ],
            ),
            Column(
              children: [
                const Text(
                  seconds,
                  style: TextStyle(fontSize: 23),
                ),
                NumberPicker(
                    itemCount: 3,
                    itemHeight: 25,
                    minValue: 0,
                    maxValue: 59,
                    value: secondOfNumberPicker,
                    onChanged: (int seconds) {
                      context.read<TimerCubit>().updateSecondOfNumberPicker(seconds);
                    }),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
