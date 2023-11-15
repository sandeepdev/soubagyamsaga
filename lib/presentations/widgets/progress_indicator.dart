import 'package:flutter/material.dart';
import 'dart:math' as math;

class AnimatedColoredCircularProgressIndicator extends StatefulWidget {
  final double value; // Value between 0.0 and 1.0
  final int numberOfSteps;
  final double stepWidth;
  final double strokeWidth;
  final List<Color> stepColors;

  const AnimatedColoredCircularProgressIndicator({super.key, 
    required this.value,
    required this.numberOfSteps,
    required this.stepWidth,
    required this.strokeWidth,
    required this.stepColors,
  });

  @override
  // ignore: library_private_types_in_public_api
  _AnimatedColoredCircularProgressIndicatorState createState() =>
      _AnimatedColoredCircularProgressIndicatorState();
}

class _AnimatedColoredCircularProgressIndicatorState
    extends State<AnimatedColoredCircularProgressIndicator>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RotationTransition(
      turns: Tween(begin: 0.0, end: 1.0).animate(_controller),
      child: CustomPaint(
        size: const Size(100, 100), // Adjust the size as needed
        painter: ColoredProgressPainter(
          value: widget.value,
          numberOfSteps: widget.numberOfSteps,
          stepWidth: widget.stepWidth,
          strokeWidth: widget.strokeWidth,
          stepColors: widget.stepColors,
        ),
      ),
    );
  }
}

class ColoredProgressPainter extends CustomPainter {
  final double value;
  final int numberOfSteps;
  final double stepWidth;
  final double strokeWidth;
  final List<Color> stepColors;

  ColoredProgressPainter({
    required this.value,
    required this.numberOfSteps,
    required this.stepWidth,
    required this.strokeWidth,
    required this.stepColors,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth;

    for (int i = 0; i < numberOfSteps; i++) {
      final stepStartAngle = (i / numberOfSteps) * 2 * math.pi;
      final stepSweepAngle = (1 / numberOfSteps) * 2 * math.pi;
      final stepColorIndex = i % stepColors.length;

      paint.color = stepColors[stepColorIndex];

      final rect = Rect.fromCircle(
        center: Offset(size.width / 2, size.height / 2),
        radius: size.width / 2 - (stepWidth * i),
      );

      canvas.drawArc(rect, stepStartAngle, stepSweepAngle, false, paint);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class ProgressIndicatorWidget extends StatelessWidget {
  const ProgressIndicatorWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AnimatedColoredCircularProgressIndicator(
      value: 0.75, // Adjust the value to control progress
      numberOfSteps: 8, // Adjust the number of steps
      stepWidth: 15.0, // Adjust the width of each step
      strokeWidth: 5.0, // Adjust the overall stroke width
      stepColors: [
        Colors.red,
        Colors.blue,
        Colors.green,
        Colors.orange,
        Colors.purple,
        Colors.yellow,
        Colors.teal,
        Colors.pink,
      ],
    );
  }
}