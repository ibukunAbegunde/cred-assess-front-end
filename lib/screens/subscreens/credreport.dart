import 'dart:math';

import 'package:flutter/material.dart';

class CircleProgressBar extends StatelessWidget {
  final double percentage;

  CircleProgressBar({required this.percentage});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: CircleProgressBarPainter(percentage: percentage),
      child: Container(),
    );
  }
}

class CircleProgressBarPainter extends CustomPainter {
  final double percentage;
  final double strokeWidth;
  final Color backgroundColor;
  final Color progressColor;

  CircleProgressBarPainter({
    required this.percentage,
    this.strokeWidth = 7.0,
    this.backgroundColor = Colors.green,
    this.progressColor = Colors.blue,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = min(size.width / 2, size.height / 2);

    final backgroundPaint = Paint()
      ..color = backgroundColor
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke;

    final progressPaint = Paint()
      ..color = progressColor
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke;

    canvas.drawCircle(center, radius, backgroundPaint);

    final sweepAngle = 2 * pi * percentage;
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      -pi / 2,
      sweepAngle,
      false,
      progressPaint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Circle Progress Bar')),
        body: Center(
          child: CircleProgressBar(percentage: 0.7),
        ),
      ),
    );
  }
}