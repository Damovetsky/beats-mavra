import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_animator/flutter_animator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rxdart/rxdart.dart';

import '../../../core/di/di.dart';
import '../../../core/ui/color_schemes.dart';
import '../../../core/ui/kit/bouncing_gesture_detector.dart';
import '../../../core/ui/kit/chip.dart';
import '../../../core/ui/kit/image.dart';
import '../../../core/ui/kit/tags.dart';
import '../../../core/ui/text_styles.dart';
import '../../../domain/beats/entity/beat_entity.dart';
import '../../../domain/beats/entity/playable_beat_entity.dart';
import '../../../domain/beats/repository/beats_repository.dart';
import '../../purchase_sheet/purchase_sheet.dart';
import 'cubit/cubit.dart';

class BeatCard extends StatelessWidget {
  final BeatEntity beat;
  final bool playing;

  const BeatCard({
    super.key,
    required this.beat,
    this.playing = false,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt.get<BeatCardCubit>(),
      child: BlocBuilder<BeatCardCubit, BeatCardInitialState>(
        builder: (context, state) {
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
                const SizedBox(height: 12),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Row(
                    children: [
                      const _BeatFormat(title: 'MP3'),
                      if (beat.wavFileId != null) ...const [
                        SizedBox(width: 8),
                        _BeatFormat(title: 'WAV')
                      ],
                      if (beat.zipFileId != null) ...const [
                        SizedBox(width: 8),
                        _BeatFormat(title: 'ZIP')
                      ],
                      const SizedBox(width: 8),
                      Expanded(
                        child: ShaderMask(
                          shaderCallback: (Rect rect) {
                            return LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [
                                currentColorScheme(context).background,
                                Colors.transparent,
                                Colors.transparent,
                                currentColorScheme(context).background,
                              ],
                              stops: const [0.0, 0.07, 0.95, 1.0],
                            ).createShader(rect);
                          },
                          blendMode: BlendMode.dstOut,
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            padding: const EdgeInsets.symmetric(horizontal: 12),
                            child: AppTags(tags: beat.genres),
                          ),
                        ),
                      ),
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
                const SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.only(left: 8, right: 16),
                  child: Row(
                    children: [
                      Pulse(
                        preferences: AnimationPreferences(
                          duration: Duration(
                              milliseconds: (60 * 1000 / beat.temp).round()),
                          autoPlay: AnimationPlayStates.Loop,
                        ),
                        child: AppChip(
                          color: currentColorScheme(context).secondaryContainer,
                          child: Text(
                            '${beat.temp} BMP',
                            style: currentTextTheme(context)
                                .bodyMedium
                                ?.copyWith(
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
                        onPressed: () {
                          context.read<BeatCardCubit>().like(beat.beatId);
                        },
                        icon: Icon(
                          Icons.favorite,
                          color: redColor.withOpacity(0.3),
                        ),
                      ),
                      BouncingGestureDetector(
                        onTap: () {
                          unawaited(PurchaseSheet.show(context, beat));
                        },
                        child: AppChip(
                          color: currentColorScheme(context).secondaryContainer,
                          child: Icon(
                            Icons.shopping_cart_outlined,
                            size: 18,
                            color: currentColorScheme(context).primary,
                          ),
                        ),
                      ),
                      const SizedBox(width: 12),
                      BouncingGestureDetector(
                        onTap: () {
                          context.read<BeatCardCubit>().play(
                                PlayableBeatEntity(
                                  entity: beat,
                                  status: playing
                                      ? BeatPlayingStatus.paused
                                      : BeatPlayingStatus.started,
                                ),
                              );
                        },
                        child: Container(
                          height: 32,
                          width: 32,
                          decoration: BoxDecoration(
                            color:
                                currentColorScheme(context).secondaryContainer,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            playing ? Icons.pause : Icons.play_arrow,
                            color: currentColorScheme(context).primary,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 8),
              ],
            ),
          );
        },
      ),
    );
  }
}

class _BeatFormat extends StatelessWidget {
  final String title;

  const _BeatFormat({required this.title});

  @override
  Widget build(BuildContext context) {
    return AppChip(
      color: currentColorScheme(context).tertiaryContainer.withOpacity(0.4),
      child: Text(
        title,
        style: currentTextTheme(context).bodyMedium?.copyWith(
              color: currentColorScheme(context).tertiary,
              fontWeight: FontWeight.w600,
            ),
      ),
    );
  }
}
