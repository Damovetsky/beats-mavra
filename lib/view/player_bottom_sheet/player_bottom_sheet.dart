import 'package:flutter/material.dart';
import 'package:solid_bottom_sheet/solid_bottom_sheet.dart';

import '../../core/ui/color_schemes.dart';
import '../../core/ui/dimens.dart';
import '../../core/ui/text_styles.dart';

class PlayerBottomSheet extends StatelessWidget {
  const PlayerBottomSheet(this._controller, {super.key});

  final SolidController _controller;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SolidBottomSheet(
      // toggleVisibilityOnTap: true,
      showOnAppear: _controller.isOpened,
      controller: _controller,
      draggableBody: true,
      smoothness: Smoothness.high,
      headerBar: _HeaderBar(),
      body: MusicPlayer(
        size: size,
        key: const ValueKey('player'),
      ),
      maxHeight: size.height * 0.6,
    );
  }
}

class MusicPlayer extends StatelessWidget {
  const MusicPlayer({
    required this.size,
    super.key,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      child: SizedBox(
        height: size.height,
        width: size.width,
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
              Container(
                height: size.height * 0.1,
                width: size.width,
                color: Colors.grey,
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
  _HeaderBar();

  bool isShown = true;

  @override
  Widget build(BuildContext context) {
    return isShown
        ? Column(
            children: [
              //TODO: timmeline
              Container(
                height: 5,
                color: Colors.grey,
              ),
              ListTile(
                visualDensity: VisualDensity.compact,
                leading: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 6),
                  child: GestureDetector(
                    child: const Icon(
                      Icons.favorite_outline,
                      size: 40,
                    ),
                    onTap: () {
                      //Favourite button
                    },
                  ),
                ),
                title: const Text(
                  'Beat title',
                  textAlign: TextAlign.center,
                ),
                subtitle: const Text(
                  'Author',
                  textAlign: TextAlign.center,
                ),
                trailing: GestureDetector(
                  child: const Icon(
                    Icons.play_arrow_rounded,
                    size: 55,
                  ),
                  onTap: () {
                    //Play button
                  },
                ),
                tileColor: currentColorScheme(context).surfaceVariant,
              ),
            ],
          )
        : SizedBox.shrink();
  }
}
