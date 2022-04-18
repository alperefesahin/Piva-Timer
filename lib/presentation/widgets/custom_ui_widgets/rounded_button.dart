import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    Key? key,
    required this.text,
    required this.onTap,
    required this.width,
    required this.height,
  }) : super(key: key);
  final String text;
  final VoidCallback onTap;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      onTap: onTap,
      child: Container(
        constraints: const BoxConstraints(maxWidth: 150),
        width: width,
        height: height,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(100.0),
            boxShadow: const [BoxShadow(color: Color.fromARGB(162, 0, 0, 0), blurRadius: 20, blurStyle: BlurStyle.outer)]),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 20.0,
            ),
          ),
        ),
      ),
    );
  }
}
