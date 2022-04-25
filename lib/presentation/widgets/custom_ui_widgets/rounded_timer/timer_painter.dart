import 'package:flutter/material.dart';
import 'dart:math' as math;

class TimerPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    double radius = math.min(size.width, size.height) / 2;
    final Offset center = size.center(Offset.zero);
    final Paint paint = Paint()
      ..color = Colors.grey
      ..strokeWidth = 5
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke;

    canvas.drawCircle(center, radius, paint);

    Rect rect = Rect.fromCircle(center: center, radius: radius);
    paint.color = Colors.grey;
    canvas.drawArc(rect, math.pi * 1.5, 2 * math.pi, false, paint);
  }

  @override
  bool shouldRepaint(TimerPainter oldDelegate) {
    return false;
  }
}
