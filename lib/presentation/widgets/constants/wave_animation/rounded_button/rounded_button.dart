import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    Key? key,
    required this.text,
    required this.onTap,
  }) : super(key: key);
  final String text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width / 4,
        height: MediaQuery.of(context).size.height / 7,
        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(100.0), boxShadow: const [
          BoxShadow(color: Color.fromARGB(162, 0, 0, 0), blurRadius: 20, blurStyle: BlurStyle.outer)
        ]),
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
