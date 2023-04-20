import 'package:flutter/material.dart';
import 'package:solid_bottom_sheet/solid_bottom_sheet.dart';

import '../../core/ui/color_schemes.dart';
import '../../core/ui/dimens.dart';
import '../../core/ui/text_styles.dart';
import '../widget/painter.dart';

class PlayerBottomSheet extends StatelessWidget {
  const PlayerBottomSheet(this.controller, {super.key});

  final SolidController controller;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SolidBottomSheet(
      // toggleVisibilityOnTap: true,
      showOnAppear: controller.isOpened,
      controller: controller,
      draggableBody: true,
      smoothness: Smoothness.medium,
      headerBar: _HeaderBar(
        size: size,
        controller: controller,
      ),
      body: _MusicPlayer(
        size: size,
        key: const ValueKey('player'),
      ),
      maxHeight: size.height * 0.6,
    );
  }
}

class _MusicPlayer extends StatelessWidget {
  const _MusicPlayer({
    required this.size,
    super.key,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      child: Container(
        height: size.height,
        width: size.width,
        color: currentColorScheme(context).surfaceVariant,
        child: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: screenHorizontalMargin),
          child: Column(
            children: [
              Container(
                height: size.height * 0.25,
                width: size.height * 0.25,
                color: Colors.grey,
                //TODO: add image
              ),
              const SizedBox(height: 10),
              Text(
                //TODO: add title
                'Beat title',
                style: currentTextTheme(context).displaySmall,
              ),
              Text(
                //TODO: add author
                'Author',
                style: currentTextTheme(context).bodyLarge,
              ),
              const SizedBox(height: 10),
              //TODO:
              Container(
                height: size.height * 0.1,
                width: size.width,
                child: WaveWidget(graph: [
                  0.466,
                  0.284,
                  0.569,
                  0.529,
                  0.768,
                  0.763,
                  0.765,
                  0.905,
                  0.152,
                  0.954,
                  0.187,
                  0.215,
                  0.429,
                  0.694,
                  0.324,
                  0.689,
                  0.603,
                  0.522,
                  0.750,
                  0.658,
                  0.874,
                  0.438,
                  0.029,
                  0.695,
                  0.645,
                  0.077,
                  0.797,
                  0.417,
                  0.992,
                  0.881,
                  0.638,
                  0.181,
                  0.803,
                  0.272,
                  0.192,
                  0.975,
                  0.357,
                  0.788,
                  0.678,
                  0.131,
                  0.102,
                  0.910,
                  0.547,
                  0.109,
                  0.602,
                  0.141,
                  0.712,
                  0.196,
                  0.839,
                  0.867,
                  0.438,
                  0.208,
                  0.711,
                  0.145,
                  0.905,
                  0.765,
                  0.295,
                  0.518,
                  0.529,
                  0.994,
                  0.076,
                  0.570,
                  0.139,
                  0.919,
                  0.368,
                  0.845,
                  0.974,
                  0.172,
                  0.216,
                  0.048,
                  0.052,
                  0.036,
                  0.398,
                  0.712,
                  0.861,
                  0.981,
                  0.497,
                  0.341,
                  0.459,
                  0.120,
                  0.150,
                  0.580,
                  0.320,
                  0.750,
                  0.878,
                  0.080,
                  0.058,
                  0.952,
                  0.464,
                  0.441,
                  0.778,
                  0.198,
                  0.738,
                  0.841,
                  0.245,
                  0.774,
                  0.657,
                  0.567,
                  0.684,
                  0.515,
                  0.553,
                  0.423
                ], percentOfHeights: 0.4),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    //TODO: time
                    Text('1:07'),
                    Text('3:00'),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {
                      //...
                    },
                    icon: const Icon(
                      Icons.replay_10_rounded,
                      size: 40,
                    ),
                  ),
                  const SizedBox(width: 10),
                  IconButton(
                    onPressed: () {
                      //...
                    },
                    icon: Icon(
                      Icons.play_circle_outline_rounded,
                      size: 60,
                    ),
                  ),
                  const SizedBox(width: 10),
                  IconButton(
                    onPressed: () {
                      //...
                    },
                    icon: const Icon(
                      Icons.forward_10_rounded,
                      size: 40,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _HeaderBar extends StatelessWidget {
  _HeaderBar({
    required this.size,
    required this.controller,
  });

  bool isShown = true;
  final SolidController controller;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return isShown
        ? Column(
            children: [
              //TODO: timeline
              Container(
                height: 5,
                color: Colors.grey,
              ),
              Container(
                height: size.height * 0.06,
                width: size.width,
                color: currentColorScheme(context).surfaceVariant,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: const Icon(
                          Icons.favorite_border_rounded,
                          size: 30,
                        ),
                        onPressed: () {
                          //Favourite button
                        },
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Beat title',
                            textAlign: TextAlign.center,
                            style: currentTextTheme(context).bodyLarge,
                          ),
                          Text(
                            'Author',
                            textAlign: TextAlign.center,
                            style: currentTextTheme(context).bodyMedium,
                          ),
                        ],
                      ),
                      IconButton(
                        icon: const Icon(
                          Icons.play_arrow,
                          size: 30,
                        ),
                        onPressed: () {
                          //Favourite button
                        },
                      ),
                    ],
                  ),
                ),
              )
            ],
          )
        : SizedBox.shrink();
  }
}
