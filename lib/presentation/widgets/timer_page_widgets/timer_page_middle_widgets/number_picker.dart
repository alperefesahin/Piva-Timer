import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:piva/application/timer/timer_cubit.dart';
import 'package:piva/infrastructure/notification/localization/piva_localization.dart';

class NumberPickerToSetTime extends StatelessWidget {
  const NumberPickerToSetTime({Key? key, required this.hourOfNumberPicker, required this.minuteOfNumberPicker, required this.secondOfNumberPicker}) : super(key: key);
  final int hourOfNumberPicker;
  final int minuteOfNumberPicker;
  final int secondOfNumberPicker;

  @override
  Widget build(BuildContext context) {
    final _localization = PivaLocalizations.of(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: MediaQuery.of(context).size.height / 6,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Text(
                  _localization.hours,
                  style: const TextStyle(fontSize: 23),
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
                Text(
                  _localization.minutes,
                  style: const TextStyle(fontSize: 23),
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
                Text(
                  _localization.seconds,
                  style: const TextStyle(fontSize: 23),
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
