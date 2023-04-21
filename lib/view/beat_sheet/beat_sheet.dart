import 'dart:async';
import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/const.dart';
import '../../core/di/di.dart';
import '../../core/helper/sheet_helper.dart';
import '../../core/ui/color_schemes.dart';
import '../../core/ui/dimens.dart';
import '../../core/ui/kit/bouncing_gesture_detector.dart';
import '../../core/ui/kit/image.dart';
import '../../core/ui/kit/radio_tags.dart';
import '../../core/ui/text_styles.dart';
import '../../domain/beats/entity/beat_entity.dart';
import '../../domain/beats/entity/create_beat_entity.dart';
import 'cubit/cubit.dart';
import 'widget/beat_files.dart';
import 'widget/genres_text_field.dart';

class BeatSheet extends StatefulWidget {
  const BeatSheet({super.key});

  static Future<void> show(BuildContext context, String? beatId) {
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
  File? cover;

  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _currentFiles = <String, BeatViewObject?>{
    'mp3': null,
    'wav': null,
    'zip': null,
  };
  List<String> _currentGenres = [];
  int _currentTempo = 20;
  int _currentDimensionIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt.get<BeatSheetCubit>(),
      child: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: () {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        child: Form(
          child: BlocBuilder<BeatSheetCubit, BeatSheetState>(
            builder: (context, state) {
              return Container(
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
                          'beat_sheet_add_title'.tr(),
                          style: currentTextTheme(context).titleLarge?.copyWith(
                                color: currentColorScheme(context).primary,
                              ),
                        ),
                        const SizedBox(height: 24),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _Cover(
                              cover: cover,
                              onChoosed: (coverFile) {
                                setState(() {
                                  cover = coverFile;
                                });
                              },
                            ),
                            const SizedBox(width: 16),
                            Expanded(
                              child: TextFormField(
                                controller: _titleController,
                                validator: (value) {
                                  if (value == null || value.isEmpty || value.length <= 5) {
                                    return 'ошибка';
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                  hintText: 'beat_sheet_title_hint'.tr(),
                                  labelText: 'beat_sheet_title_label'.tr(),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        TextFormField(
                          controller: _descriptionController,
                          validator: (value) {
                            if (value == null || value.isEmpty || value.length <= 5) {
                              return 'ошибка';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            hintText: 'beat_sheet_description_hint'.tr(),
                            labelText: 'beat_sheet_description_label'.tr(),
                          ),
                        ),
                        const SizedBox(height: 24),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'beat_sheet_tracks_title'.tr(),
                              style: currentTextTheme(context).titleMedium?.copyWith(
                                    color: currentColorScheme(context).primary,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              'beats_sheet_tracks_hint'.tr(),
                              style: currentTextTheme(context).bodyMedium?.copyWith(
                                    color: currentColorScheme(context).onBackground.withOpacity(0.7),
                                  ),
                            ),
                            const SizedBox(height: 16),
                            BeatFilesWidget(
                              files: _currentFiles,
                              onFileChanged: (fileType, file) {
                                setState(() {
                                  _currentFiles[fileType] = file;
                                });
                              },
                            ),
                          ],
                        ),
                        const SizedBox(height: 24),
                        _Genre(
                          genres: _currentGenres,
                          onChanged: (newGenres) {
                            setState(() {
                              _currentGenres = newGenres;
                            });
                          },
                        ),
                        const SizedBox(height: 24),
                        _TempoSlider(
                          initialTempo: _currentTempo,
                          onChanged: (newTempo) {
                            setState(() {
                              _currentTempo = newTempo;
                            });
                          },
                        ),
                        const SizedBox(height: 24),
                        _Dimension(
                          currentIndex: _currentDimensionIndex,
                          dimensions: availableDimensions,
                          onChanged: (index) {
                            setState(() {
                              _currentDimensionIndex = index;
                            });
                          },
                        ),
                        const SizedBox(height: 32),
                        FilledButton(
                          onPressed: () {
                            if (Form.of(context).validate() &&
                                cover != null &&
                                _currentFiles['mp3'] != null &&
                                _currentGenres.isNotEmpty) {
                              context.read<BeatSheetCubit>().createBeat(
                                    cover: cover!,
                                    title: _titleController.text,
                                    description: _descriptionController.text,
                                    mp3File: _currentFiles['mp3']!.file,
                                    wavFile: _currentFiles['wav']?.file,
                                    zipFile: _currentFiles['zip']?.file,
                                    genres: _currentGenres,
                                    tempo: _currentTempo,
                                    dimension: availableDimensions[_currentDimensionIndex],
                                  );
                            }
                          },
                          child: Center(
                            child: Text('Создать'),
                          ),
                        ),
                        const SizedBox(height: screenBottomScrollPadding * 2),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class _Cover extends StatelessWidget {
  final File? cover;
  final Function(File cover) onChoosed;

  const _Cover({
    required this.cover,
    required this.onChoosed,
  });

  @override
  Widget build(BuildContext context) {
    Widget child;
    if (cover != null) {
      child = AppImage(
        image: FileImage(cover!),
        borderRadius: BorderRadius.circular(8),
        width: 56,
        height: 56,
      );
    } else {
      child = Container(
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
      );
    }

    return BouncingGestureDetector(
      onTap: () async {
        final result = (await FilePicker.platform.pickFiles(type: FileType.image))?.files.first.path;

        if (result != null) {
          onChoosed(File(result));
        }
      },
      child: AnimatedSwitcher(
        duration: const Duration(milliseconds: 200),
        child: child,
      ),
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
          genres: genres,
          onChanged: (genres) {
            onChanged(genres);
          },
          onRemoved: (index) {
            onChanged([...genres]..removeAt(index));
          },
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
          currentIndex: currentIndex,
          tags: dimensions,
          onChoosed: onChanged,
        )
      ],
    );
  }
}
