import 'dart:math';

import 'package:flutter/material.dart';

class WaveWidget extends StatefulWidget {
  final List<double> graph;
  const WaveWidget({Key? key, required this.graph}) : super(key: key);

  @override
  State<WaveWidget> createState() => _WaveWidgetState(graph);
}

class _WaveWidgetState extends State<WaveWidget> {
  late final List<double> graph;

  _WaveWidgetState(List<double> graphInit) {
    graph = graphInit;
  }

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
        painter: AmplitudePainter(amplitudeData: graph),
    );
  }
}


class AmplitudePainter extends CustomPainter {
  final List<double> amplitudeData;

  final double barWidth;
  final double barSpacing;
  final double maxHeight;

  AmplitudePainter({
    required this.amplitudeData,
    this.barWidth = 2,
    this.barSpacing = 1,
    this.maxHeight = 100,
  });


  @override
  void paint(Canvas canvas, Size size) {
    final int numBars = amplitudeData.length;
    final barCount = min(amplitudeData.length, numBars);
    final barTotalWidth = (barWidth + barSpacing) * barCount - barSpacing;
    final startX = (size.width - barTotalWidth) / 2;

    for (var i = 0; i < barCount; i++) {
      final barHeight = amplitudeData[i] * maxHeight;
      final startY = (size.height - barHeight) / 2;
      final rect = Rect.fromLTRB(
        startX + i * (barWidth + barSpacing),
        startY,
        startX + i * (barWidth + barSpacing) + barWidth,
        startY + barHeight,
      );
      canvas.drawRect(rect, Paint()
        ..color = Colors.blue);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
