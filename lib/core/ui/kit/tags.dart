import 'package:flutter/material.dart';
import 'package:flutter_tags/flutter_tags.dart';

import '../color_schemes.dart';
import '../text_styles.dart';
import 'bouncing_gesture_detector.dart';

class AppTags extends StatelessWidget {
  final List<String> tags;
  final Function(int index)? onRemove;

  const AppTags({
    super.key,
    required this.tags,
    this.onRemove,
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
            onRemove?.call(index);
          },
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 4,
            ),
            decoration: BoxDecoration(
              color: currentColorScheme(context).secondaryContainer,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  tags[index],
                  style: currentTextTheme(context).bodyMedium?.copyWith(
                        color: currentColorScheme(context).primary,
                      ),
                ),
                if (onRemove != null) ...[
                  const SizedBox(width: 8),
                  Icon(
                    Icons.close,
                    size: 16,
                    color: currentColorScheme(context).onPrimary,
                  ),
                ]
              ],
            ),
          ),
        );
      },
    );
  }
}
