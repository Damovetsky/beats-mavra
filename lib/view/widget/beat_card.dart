import 'package:flutter/material.dart';
import 'package:flutter_animator/flutter_animator.dart';

import '../../core/ui/color_schemes.dart';
import '../../core/ui/kit/chip.dart';
import '../../core/ui/kit/image.dart';
import '../../core/ui/text_styles.dart';
import '../../domain/beats/entity/beat_entity.dart';

class BeatCard extends StatelessWidget {
  final BeatEntity beat;

  const BeatCard({
    super.key,
    required this.beat,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: currentColorScheme(context).surfaceVariant,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Row(
              children: [
                AppImage(
                  height: 72,
                  width: 108,
                  image: NetworkImage(beat.cover),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(46),
                    bottomRight: Radius.circular(46),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Text(
                    beat.title,
                    style: currentTextTheme(context).bodyMedium?.copyWith(
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
                  image: NetworkImage('http://placekitten.com/200/300'),
                )
              ],
            ),
          ),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.only(left: 12, right: 16),
            child: Text(
              beat.description,
              style: currentTextTheme(context).bodySmall?.copyWith(
                    color: currentColorScheme(context).onSurfaceVariant,
                  ),
            ),
          ),
          const SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 16),
            child: Row(
              children: [
                Pulse(
                  preferences: AnimationPreferences(
                    duration: Duration(milliseconds: (60 * 1000 / beat.temp).round()),
                    autoPlay: AnimationPlayStates.Loop,
                  ),
                  child: AppChip(
                    color: currentColorScheme(context).secondaryContainer,
                    child: Text(
                      '${beat.temp} BMP',
                      style: currentTextTheme(context).bodyMedium?.copyWith(
                            color: currentColorScheme(context).primary,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Text(
                  beat.dimension,
                  style: currentTextTheme(context).bodyMedium?.copyWith(
                        color: currentColorScheme(context).primary,
                      ),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.favorite,
                    color: redColor.withOpacity(0.3),
                  ),
                ),
                AppChip(
                  color: currentColorScheme(context).secondaryContainer,
                  child: Icon(
                    Icons.shopping_cart_outlined,
                    size: 18,
                    color: currentColorScheme(context).primary,
                  ),
                ),
                const SizedBox(width: 12),
                Container(
                  height: 32,
                  width: 32,
                  decoration: BoxDecoration(
                    color: currentColorScheme(context).secondaryContainer,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.play_arrow,
                    color: currentColorScheme(context).primary,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}
