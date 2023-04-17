import 'package:flutter/material.dart';

import '../../core/ui/color_schemes.dart';
import '../../core/ui/kit/chip.dart';
import '../../core/ui/kit/image.dart';
import '../../core/ui/text_styles.dart';

class BeatCard extends StatelessWidget {
  const BeatCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: currentColorScheme(context).surfaceVariant,
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Row(
              children: [
                AppImage(
                  height: 72,
                  width: 108,
                  image: NetworkImage('https://picsum.photos/200/300'),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(46),
                    bottomRight: Radius.circular(46),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Text(
                    'Travis Scott Sample Beat with TRACKOUT',
                    style: currentTextStyle(context).bodyMedium?.copyWith(
                          color: currentColorScheme(context).primary,
                          fontWeight: FontWeight.w600,
                        ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(width: 16),
                AppImage(
                  height: 36,
                  width: 36,
                  borderRadius: BorderRadius.circular(18),
                  image: NetworkImage('https://picsum.photos/200/300'),
                )
              ],
            ),
          ),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.only(left: 12, right: 16),
            child: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
              style: currentTextStyle(context).bodySmall?.copyWith(
                    color: currentColorScheme(context).onSurfaceVariant,
                  ),
            ),
          ),
          SizedBox(height: 24),
          
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 16),
            child: Row(
              children: [
                AppChip(
                  color: currentColorScheme(context).primary,
                  child: Text('fff'),
                )
              ],
            ),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
