import 'package:flutter/material.dart';

import '../../core/const.dart';
import '../../core/helper/sheet_helper.dart';
import '../../core/ui/color_schemes.dart';
import '../../core/ui/dimens.dart';
import '../../core/ui/kit/radio_tags.dart';
import '../../core/ui/text_styles.dart';
import 'widget/beat_files.dart';
import 'widget/genres_text_field.dart';

class BeatSheet extends StatefulWidget {
  const BeatSheet({super.key});

  static Future<void> show(BuildContext context) {
    return BottomSheetHelper.show(
      context,
      (context, padding) => const BeatSheet(),
      isScrollControlled: true,
    );
  }

  @override
  State<BeatSheet> createState() => _BeatSheetState();
}

class _BeatSheetState extends State<BeatSheet> {
  List<String> currentGenres = [];
  int currentTempo = 20;
  int currentDimensionIndex = 0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Container(
        constraints: BoxConstraints(
          minHeight: MediaQuery.of(context).size.height * 0.4,
          maxHeight: MediaQuery.of(context).size.height * 0.85,
        ),
        child: Padding(
          padding: MediaQuery.of(context).viewInsets,
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: screenHorizontalMargin),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Добавить инструментал',
                  style: currentTextStyle(context).titleLarge?.copyWith(
                        color: currentColorScheme(context).primary,
                      ),
                ),
                const SizedBox(height: 24),
                Row(
                  children: [
                    Container(
                      height: 56,
                      width: 56,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Theme.of(context).inputDecorationTheme.enabledBorder?.borderSide.color ??
                              currentColorScheme(context).outline,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Icon(
                        Icons.add_photo_alternate_outlined,
                        color: currentColorScheme(context).outline,
                      ),
                    ),
                    const SizedBox(width: 16),
                    const Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Введите название',
                          labelText: 'Название',
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                const TextField(
                  decoration: InputDecoration(
                    hintText: 'Введите описание...',
                    labelText: 'Описание',
                  ),
                ),
                const SizedBox(height: 24),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Дорожки',
                      style: currentTextStyle(context).titleMedium?.copyWith(
                            color: currentColorScheme(context).primary,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'Добавьте ваш инструментал в виде WAV, MP3 или архива с каждой дорожкой проекта в вашем секвенсоре',
                      style: currentTextStyle(context).bodyMedium?.copyWith(
                            color: currentColorScheme(context).onBackground.withOpacity(0.7),
                          ),
                    ),
                    const SizedBox(height: 16),
                    const BeatFiles(),
                  ],
                ),
                _Genre(
                  genres: currentGenres,
                  onChanged: (newGenres) {
                    setState(() {
                      currentGenres = newGenres;
                    });
                  },
                ),
                const SizedBox(height: 24),
                _TempoSlider(
                  initialTempo: currentTempo,
                  onChanged: (newTempo) {
                    setState(() {
                      currentTempo = newTempo;
                    });
                  },
                ),
                const SizedBox(height: 24),
                _Dimension(
                  currentIndex: currentDimensionIndex,
                  dimensions: const ['4/4', '2/4', '3/4', '5/4', '3/8', '6/8'],
                  onChanged: (index) {
                    setState(() {
                      currentDimensionIndex = index;
                    });
                  },
                ),
                const SizedBox(
                  height: screenBottomScrollPadding * 2,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _Dimension extends StatelessWidget {
  final int currentIndex;
  final List<String> dimensions;
  final Function(int index) onChanged;

  const _Dimension({
    required this.currentIndex,
    required this.dimensions,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Размерность',
          style: currentTextStyle(context).titleMedium?.copyWith(
                color: currentColorScheme(context).primary,
                fontWeight: FontWeight.w600,
              ),
        ),
        const SizedBox(height: 4),
        Text(
          'Выставите основную размерность инструментала',
          style: currentTextStyle(context).bodyMedium?.copyWith(
                color: currentColorScheme(context).onBackground.withOpacity(0.7),
              ),
        ),
        const SizedBox(height: 16),
        RadioTags(
          currentIndex: currentIndex,
          tags: dimensions,
          onChoosed: onChanged,
        )
      ],
    );
  }
}

class _Genre extends StatelessWidget {
  final List<String> genres;
  final Function(List<String> newGenres) onChanged;

  const _Genre({
    required this.genres,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'Жанр',
          style: currentTextStyle(context).titleMedium?.copyWith(
                color: currentColorScheme(context).primary,
                fontWeight: FontWeight.w600,
              ),
        ),
        const SizedBox(height: 4),
        Text(
          'Выберите жанры вашего инструментала',
          style: currentTextStyle(context).bodyMedium?.copyWith(
                color: currentColorScheme(context).onBackground.withOpacity(0.7),
              ),
        ),
        const SizedBox(height: 16),
        GenreTextField(
          availableGenres: availableGenres,
          genres: genres,
          onChanged: (genres) {
            onChanged(genres);
          },
          onRemoved: (index) {},
        ),
      ],
    );
  }
}

class _TempoSlider extends StatelessWidget {
  final int initialTempo;
  final Function(int newTempo) onChanged;

  const _TempoSlider({
    required this.initialTempo,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'Темп',
          style: currentTextStyle(context).titleMedium?.copyWith(
                color: currentColorScheme(context).primary,
                fontWeight: FontWeight.w600,
              ),
        ),
        const SizedBox(height: 4),
        Text(
          'Выставите основной темп инструментала в ударах в минуту',
          style: currentTextStyle(context).bodyMedium?.copyWith(
                color: currentColorScheme(context).onBackground.withOpacity(0.7),
              ),
        ),
        const SizedBox(height: 16),
        Row(
          children: [
            Text(
              '20',
              style: currentTextStyle(context).bodyLarge?.copyWith(
                    color: currentColorScheme(context).onBackground.withOpacity(0.5),
                    fontWeight: FontWeight.w600,
                  ),
            ),
            Expanded(
              child: Slider(
                value: initialTempo.toDouble(),
                min: 10,
                max: 300,
                label: initialTempo.toString(),
                divisions: 290,
                onChanged: (changedTempo) {
                  onChanged(changedTempo.round());
                },
              ),
            ),
            Text(
              '300',
              style: currentTextStyle(context).bodyLarge?.copyWith(
                    color: currentColorScheme(context).onBackground.withOpacity(0.5),
                    fontWeight: FontWeight.w600,
                  ),
            ),
          ],
        ),
      ],
    );
  }
}
