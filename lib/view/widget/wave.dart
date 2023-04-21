import 'dart:math';

import 'package:flutter/material.dart';

import '../../core/ui/color_schemes.dart';

class WaveWidget extends StatelessWidget {
  final List<double> graph;
  final double positionPercent;
  final Function(double positionPercent) onPositionChanged;
  final VoidCallback onPositionFinished;

  const WaveWidget({
    super.key,
    required this.graph,
    required this.positionPercent,
    required this.onPositionChanged,
    required this.onPositionFinished,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return GestureDetector(
          onTapDown: (details) {
            onPositionChanged(details.globalPosition.dx / constraints.maxWidth);
          },
          onTapUp: (_) {
            onPositionFinished();
          },
          onHorizontalDragUpdate: (details) {
            onPositionChanged(details.globalPosition.dx / constraints.maxWidth);
          },
          onHorizontalDragEnd: (details) {
            onPositionFinished();
          },
          child: CustomPaint(
            painter: AmplitudePainter(
              context,
              amplitudeData: graph,
              percentOfDurability: positionPercent,
            ),
          ),
        );
      },
    );
  }
}

class AmplitudePainter extends CustomPainter {
  final BuildContext context;
  final List<double> amplitudeData;
  final double barWidth;
  final double barSpacing;
  final double maxHeight;
  final double percentOfDurability;

  AmplitudePainter(
    this.context, {
    required this.percentOfDurability,
    required this.amplitudeData,
    this.barWidth = 2,
    this.barSpacing = 1.2,
    this.maxHeight = 50,
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
          ..color = ((i / barCount).toDouble() <= percentOfDurability)
              ? currentColorScheme(context).primary
              : currentColorScheme(context).primary.withOpacity(0.2),
      );
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
