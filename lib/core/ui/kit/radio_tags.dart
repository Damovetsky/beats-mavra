import 'package:beats/core/ui/kit/bouncing_gesture_detector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tags/flutter_tags.dart';

import '../color_schemes.dart';
import '../text_styles.dart';

class RadioTags extends StatelessWidget {
  final int currentIndex;
  final List<String> tags;
  final Function(int index) onChoosed;

  const RadioTags({
    super.key,
    this.currentIndex = -1,
    required this.tags,
    required this.onChoosed,
  });

  @override
  Widget build(BuildContext context) {
    return Tags(
      itemCount: tags.length,
      alignment: WrapAlignment.start,
      runSpacing: 8,
      itemBuilder: (index) {
        return BouncingGestureDetector(
          onTap: () {
            onChoosed(index);
          },
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 100),
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 6,
            ),
            decoration: BoxDecoration(
              color: currentIndex == index
                  ? currentColorScheme(context).primary
                  : currentColorScheme(context).secondaryContainer,
              borderRadius: BorderRadius.circular(24),
            ),
            child: Text(
              tags[index],
              style: currentTextTheme(context).bodyMedium?.copyWith(
                    color: currentIndex == index
                        ? currentColorScheme(context).onPrimary
                        : currentColorScheme(context).primary,
                  ),
            ),
          ),
        );
      },
    );
  }
}
