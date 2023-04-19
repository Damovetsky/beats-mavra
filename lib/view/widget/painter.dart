import 'dart:math';

import 'package:flutter/material.dart';

class WaveWidget extends StatefulWidget {
  final List<double> graph;
  final double percentOfHeights;
  const WaveWidget({Key? key, required this.graph, required this.percentOfHeights}) : super(key: key);

  @override
  State<WaveWidget> createState() => _WaveWidgetState(graph, percentOfHeights);
}

class _WaveWidgetState extends State<WaveWidget> {
  late final List<double> graph;
  late final double percentOfHeights;


  _WaveWidgetState(this.graph, this.percentOfHeights);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
        painter: AmplitudePainter(amplitudeData: graph, percentOfDurability: percentOfHeights),
    );
  }
}


class AmplitudePainter extends CustomPainter {
  final List<double> amplitudeData;

  final double barWidth;
  final double barSpacing;
  final double maxHeight;
  final double percentOfDurability;

  AmplitudePainter({
    required this.percentOfDurability,
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
      canvas.drawRect(
          rect,
          Paint()
            ..color = ((i/barCount).toDouble() <= percentOfDurability) ? Colors.blue : Colors.blue[300]!,
      );
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
