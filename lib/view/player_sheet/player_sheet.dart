import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:just_audio/just_audio.dart' as audio;
import 'package:solid_bottom_sheet/solid_bottom_sheet.dart';

import '../../core/di/di.dart';
import '../../core/ui/color_schemes.dart';
import '../../core/ui/dimens.dart';
import '../../core/ui/kit/image.dart';
import '../../core/ui/kit/shimmer_builder.dart';
import '../../core/ui/text_styles.dart';
import '../../domain/beats/entity/playable_beat_entity.dart';
import '../widget/avatar.dart';
import '../widget/wave.dart';
import '../../core/helper/duration_helper.dart';
import 'cubit/cubit.dart';

class PlayerSheet extends StatefulWidget {
  final SolidController controller;

  const PlayerSheet({super.key, required this.controller});

  @override
  State<PlayerSheet> createState() => _PlayerSheetState();
}

class _PlayerSheetState extends State<PlayerSheet> {
  final _player = audio.AudioPlayer()..setLoopMode(audio.LoopMode.all);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return BlocProvider(
      create: (context) => getIt.get<PlayerCubit>(),
      child: BlocListener<PlayerCubit, PlayerState>(
        listener: (context, state) async {
          state.mapOrNull(
            player: (state) async {
              if (state.status == BeatPlayingStatus.started) {
                await _player.setUrl(state.beatUrl);
                _player.play();
              } else {
                state.status == BeatPlayingStatus.resumed ? _player.play() : _player.pause();
              }
            },
          );
        },
        child: SolidBottomSheet(
          showOnAppear: widget.controller.isOpened,
          controller: widget.controller,
          draggableBody: true,
          smoothness: Smoothness.medium,
          headerBar: _HeaderBar(
            controller: widget.controller,
            player: _player,
            size: size,
          ),
          body: _MusicPlayer(
            key: const ValueKey('player'),
            size: size,
            player: _player,
          ),
        ),
      ),
    );
  }
}

class _HeaderBar extends StatelessWidget {
  final SolidController controller;
  final audio.AudioPlayer player;
  final Size size;

  const _HeaderBar({
    required this.size,
    required this.player,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => controller.show(),
      child: BlocBuilder<PlayerCubit, PlayerState>(
        builder: (context, state) {
          return AnimatedSwitcher(
            duration: const Duration(milliseconds: 300),
            transitionBuilder: (child, animation) {
              return FadeTransition(
                opacity: animation,
                child: SizeTransition(
                  axisAlignment: -1,
                  sizeFactor: CurvedAnimation(parent: animation, curve: Curves.fastOutSlowIn),
                  child: child,
                ),
              );
            },
            child: state.maybeMap(
              player: (state) {
                return Container(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  color: currentColorScheme(context).surfaceVariant,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              icon: Icon(
                                Icons.close,
                                color: currentColorScheme(context).secondary,
                              ),
                              onPressed: () async {
                                context.read<PlayerCubit>().reset();
                                controller.hide();
                                await player.stop();
                              },
                            ),
                            Flexible(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 24),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      state.entity.title,
                                      textAlign: TextAlign.center,
                                      style: currentTextTheme(context).bodyMedium?.copyWith(
                                            color: currentColorScheme(context).primary,
                                            fontWeight: FontWeight.w600,
                                          ),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    if (state.author != null)
                                      Text(
                                        state.author!.nickname,
                                        textAlign: TextAlign.center,
                                        style: currentTextTheme(context).bodySmall,
                                      ),
                                  ],
                                ),
                              ),
                            ),
                            StreamBuilder(
                              stream: player.playerStateStream,
                              builder: (context, snapshot) {
                                final playing = snapshot.data?.playing ?? false;

                                return IconButton(
                                  onPressed: () async {
                                    context.read<PlayerCubit>().play(
                                          PlayableBeatEntity(
                                            entity: state.entity,
                                            status: playing ? BeatPlayingStatus.paused : BeatPlayingStatus.resumed,
                                          ),
                                        );
                                    playing ? player.pause() : player.play();
                                  },
                                  icon: Icon(
                                    playing ? Icons.pause : Icons.play_arrow_rounded,
                                    size: 30,
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
              orElse: () => const SizedBox.shrink(),
            ),
          );
        },
      ),
    );
  }
}

final deltaMilliseconds = const Duration(seconds: 10).inMilliseconds;

class _MusicPlayer extends StatelessWidget {
  final Size size;
  final audio.AudioPlayer player;

  const _MusicPlayer({
    super.key,
    required this.size,
    required this.player,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlayerCubit, PlayerState>(
      buildWhen: (_, current) =>
          current.mapOrNull(
            player: (_) => true,
            loading: (_) => true,
          ) ??
          false,
      builder: (context, state) {
        return ShimmerBuilder(
          data: state.mapOrNull(
            player: (value) => value,
          ),
          loadingChild: Container(),
          builder: (context, data) {
            return SingleChildScrollView(
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.only(
                left: screenHorizontalMargin,
                right: screenHorizontalMargin,
              ),
              child: Container(
                color: currentColorScheme(context).surfaceVariant,
                child: Column(
                  children: [
                    const SizedBox(height: 16),
                    AppImage(
                      height: 196,
                      width: 196,
                      borderRadius: BorderRadius.circular(16),
                      image: NetworkImage(data.entity.cover),
                    ),
                    const SizedBox(height: 24),
                    Text(
                      data.entity.title,
                      style: currentTextTheme(context).headlineMedium,
                      textAlign: TextAlign.center,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 12),
                    if (data.author != null)
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Avatar(size: 24, url: data.author!.avatarUrl),
                          const SizedBox(width: 8),
                          Text(
                            data.author!.nickname,
                            style: currentTextTheme(context).bodyLarge,
                          ),
                        ],
                      ),
                    const SizedBox(height: 16),
                    StreamBuilder(
                      stream: player.positionStream,
                      builder: (context, snapshot) {
                        if (!snapshot.hasData) {
                          return const SizedBox.shrink();
                        }

                        final currentPosition = player.duration != null
                            ? snapshot.data!.inMilliseconds / player.duration!.inMilliseconds
                            : 0.0;

                        return Column(
                          children: [
                            SizedBox(
                              height: 64,
                              child: WaveWidget(
                                graph: data.entity.graph,
                                positionPercent: currentPosition,
                                onPositionChanged: (position) {
                                  if (player.playing) {
                                    unawaited(player.pause());
                                  }

                                  if (player.duration != null) {
                                    unawaited(
                                      player.seek(
                                        Duration(
                                          milliseconds: (player.duration!.inMilliseconds * position).round(),
                                        ),
                                      ),
                                    );
                                  }
                                },
                                onPositionFinished: () {
                                  unawaited(player.play());
                                },
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(snapshot.data!.mmss()),
                                  if (player.duration != null) Text(player.duration!.mmss()),
                                ],
                              ),
                            )
                          ],
                        );
                      },
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () async {
                            final positionMilliseconds = player.position.inMilliseconds;
                            final deltaMilliseconds = const Duration(seconds: 10).inMilliseconds;

                            final resultMilliseconds = positionMilliseconds - deltaMilliseconds;

                            player.seek(
                              Duration(milliseconds: resultMilliseconds >= 0 ? resultMilliseconds : 0),
                            );
                          },
                          icon: const Icon(
                            Icons.replay_10_rounded,
                            size: 40,
                          ),
                        ),
                        const SizedBox(width: 10),
                        StreamBuilder(
                          stream: player.playerStateStream,
                          builder: (context, snapshot) {
                            final playing = snapshot.data?.playing ?? false;

                            return IconButton(
                              onPressed: () async {
                                playing ? player.pause() : player.play();
                              },
                              icon: Icon(
                                playing ? Icons.pause_circle_outline_rounded : Icons.play_circle_outline_rounded,
                                size: 60,
                              ),
                            );
                          },
                        ),
                        const SizedBox(width: 10),
                        IconButton(
                          onPressed: () async {
                            final positionMilliseconds = player.position.inMilliseconds;

                            final resultMilliseconds = positionMilliseconds + deltaMilliseconds;

                            if (player.duration != null) {
                              player.seek(
                                Duration(
                                  milliseconds: resultMilliseconds <= player.duration!.inMilliseconds
                                      ? resultMilliseconds
                                      : player.duration!.inMilliseconds,
                                ),
                              );
                            }
                          },
                          icon: const Icon(
                            Icons.forward_10_rounded,
                            size: 40,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
