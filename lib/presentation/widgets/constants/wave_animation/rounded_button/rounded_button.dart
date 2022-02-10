import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 4,
      height: MediaQuery.of(context).size.height / 7,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(100.0),
          boxShadow: const [
            BoxShadow(
                color: Colors.black, blurRadius: 75, blurStyle: BlurStyle.outer)
          ]),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 20.0,
          ),
        ),
      ),
    );
  }
}
