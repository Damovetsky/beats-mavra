import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../core/const.dart';
import '../../core/helper/sheet_helper.dart';
import '../../core/ui/color_schemes.dart';
import '../../core/ui/dimens.dart';
import '../../core/ui/kit/radio_tags.dart';
import '../../core/ui/text_styles.dart';
import '../../domain/beats/entity/filter_beats_entity.dart';
import '../beat_sheet/widget/genres_text_field.dart';

class FilterSheet extends StatefulWidget {
  const FilterSheet({super.key});

  static Future<FilterBeatsEntity?> show(BuildContext context) {
    return BottomSheetHelper.show(
      context,
          (context, padding) => const FilterSheet(),
      isScrollControlled: true,
    );
  }

  @override
  State<FilterSheet> createState() => _FilterSheetState();
}


class _FilterSheetState extends State<FilterSheet> {

  FilterBeatsEntity filterBeats = const FilterBeatsEntity(tempStart: 20, tempEnd: 300);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Container(
        constraints: BoxConstraints(
          minHeight: MediaQuery
              .of(context)
              .size
              .height * 0.4,
          maxHeight: MediaQuery
              .of(context)
              .size
              .height * 0.85,
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
                  'filter_sheet_title'.tr(),
                  style: currentTextTheme(context).titleLarge?.copyWith(
                    color: currentColorScheme(context).primary,
                  ),
                ),
                const SizedBox(height: 24),
                _Genre(
                  genres: filterBeats.genres ?? [],
                  onChanged: (newGenres) {
                    setState(() {
                      filterBeats = filterBeats.copyWith(genres: newGenres == [] ? null : newGenres);
                    });
                  },
                ),
                const SizedBox(height: 24),
                _TempoSlider(
                  initialTempo: RangeValues((filterBeats.tempStart ?? 20).toDouble(), (filterBeats.tempEnd ?? 300).toDouble()),
                  onChanged: (newTempo) {
                    setState(() {
                      filterBeats = filterBeats.copyWith(
                          tempStart: newTempo.start.toInt(),
                          tempEnd: newTempo.end.toInt(),
                      );
                    });
                  },
                ),
                const SizedBox(height: 24),
                _Dimension(
                  currentIndex: filterBeats.dimension != null ? dimensions.indexOf(filterBeats.dimension!) : null,
                  dimensions: dimensions,
                  onChanged: (index) {
                    setState(() {
                      filterBeats = filterBeats.copyWith(
                          dimension: dimensions[index],
                      );
                    });
                  },
                ),
                const SizedBox(height: 32),
                FilledButton(
                  onPressed: () {},
                  child: const Center(
                    child: Text('Применить'),
                  ),
                ),
                const SizedBox(height: screenBottomScrollPadding * 2),
              ],
            ),
          ),
      ),
      ),
    );
  }
}


class _Genre extends StatefulWidget {
  final List<String> genres;
  final Function(List<String> newGenres) onChanged;

  const _Genre({
    required this.genres,
    required this.onChanged,
  });

  @override
  State<_Genre> createState() => _GenreState();
}

class _GenreState extends State<_Genre> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'beats_sheet_genre_title'.tr(),
          style: currentTextTheme(context).titleMedium?.copyWith(
            color: currentColorScheme(context).primary,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          'beats_sheet_genre_hint'.tr(),
          style: currentTextTheme(context).bodyMedium?.copyWith(
            color: currentColorScheme(context).onBackground.withOpacity(0.7),
          ),
        ),
        const SizedBox(height: 16),
        GenreTextField(
          availableGenres: availableGenres,
          genres: widget.genres,
          onChanged: (genres) {
            widget.onChanged(genres);
          },
          onRemoved: (index) {
            widget.onChanged([...widget.genres]..removeAt(index));
          },
        ),
      ],
    );
  }
}

class _TempoSlider extends StatefulWidget {
  final RangeValues initialTempo;
  final Function(RangeValues newTempo) onChanged;

  const _TempoSlider({
    required this.initialTempo,
    required this.onChanged,
  });

  @override
  State<_TempoSlider> createState() => _TempoSliderState();
}

class _TempoSliderState extends State<_TempoSlider> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'beats_sheet_tempo_title'.tr(),
          style: currentTextTheme(context).titleMedium?.copyWith(
            color: currentColorScheme(context).primary,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          'beats_sheet_tempo_hint'.tr(),
          style: currentTextTheme(context).bodyMedium?.copyWith(
            color: currentColorScheme(context).onBackground.withOpacity(0.7),
          ),
        ),
        const SizedBox(height: 16),
        Row(
          children: [
            Text(
              '20',
              style: currentTextTheme(context).bodyLarge?.copyWith(
                color: currentColorScheme(context).onBackground.withOpacity(0.5),
                fontWeight: FontWeight.w600,
              ),
            ),
            Expanded(
              child: RangeSlider(
            values: widget.initialTempo,
            min: 20,
            max: 300,
            divisions: 280,
            labels: RangeLabels(
              widget.initialTempo.start.round().toString(),
              widget.initialTempo.end.round().toString(),
            ),
            onChanged: (changedTempo) {
              widget.onChanged(changedTempo);
            },
              ),
            ),
            Text(
              '300',
              style: currentTextTheme(context).bodyLarge?.copyWith(
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


class _Dimension extends StatelessWidget {
  final int? currentIndex;
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
          'beats_sheet_dimensions_title'.tr(),
          style: currentTextTheme(context).titleMedium?.copyWith(
            color: currentColorScheme(context).primary,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          'beats_sheet_dimensions_hint'.tr(),
          style: currentTextTheme(context).bodyMedium?.copyWith(
            color: currentColorScheme(context).onBackground.withOpacity(0.7),
          ),
        ),
        const SizedBox(height: 16),
        RadioTags(
          currentIndex: currentIndex ?? -1,
          tags: dimensions,
          onChoosed: onChanged,
        )
      ],
    );
  }
}