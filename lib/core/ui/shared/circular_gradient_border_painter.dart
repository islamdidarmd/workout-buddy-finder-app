import 'package:flutter/material.dart';

class CircularGradientBorderPainter extends CustomPainter {
  final double radius;
  final double strokeWidth;
  final Gradient gradient;
  final _paint = Paint();

  CircularGradientBorderPainter({
    Key? key,
    required this.radius,
    required this.strokeWidth,
    required this.gradient,
  });

  @override
  Widget build(BuildContext context) {
    return Container();
  }

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);

    _paint
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke
      ..shader = gradient.createShader(
        Rect.fromCenter(
          center: center,
          width: radius,
          height: radius,
        ),
      );

    canvas.drawCircle(center, radius, _paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
