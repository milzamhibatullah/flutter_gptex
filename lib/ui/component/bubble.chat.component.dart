
import 'package:flutter/material.dart';

class BubbleChat extends CustomPainter{
  Color? color;
  BubbleChat(this.color);
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()..color = this.color!;

    var path = Path();
    path.lineTo(-10, 0);
    path.lineTo(0, 20);
    path.lineTo(10, 0);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }

}