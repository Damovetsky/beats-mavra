import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/ui/color_schemes.dart';
import '../../../core/ui/kit/bouncing_gesture_detector.dart';
import '../../../core/ui/text_styles.dart';

part 'beat_files.freezed.dart';

@freezed
class BeatFile with _$BeatFile {
  const factory BeatFile({
    required File file,
    required TextEditingController priceController,
  }) = _BeatFile;
}

class BeatFiles extends StatelessWidget {
  final Map<String, BeatFile?> files;
  final Function(String fileType, BeatFile? file) onFileChanged;

  const BeatFiles({
    super.key,
    required this.files,
    required this.onFileChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        for (int i = 0; i < files.length; i++) ...[
          Expanded(
            child: Builder(
              builder: (context) {
                final fileType = files.keys.toList(growable: false)[i];
                final beatFile = files[fileType];
                return BouncingGestureDetector(
                  onTap: () async {
                    final result = (await FilePicker.platform.pickFiles(
                      type: FileType.custom,
                      allowedExtensions: [fileType],
                    ))
                        ?.files
                        .first
                        .path;

                    if (result != null) {
                      final file = File(result);
                      onFileChanged(
                        fileType,
                        beatFile?.copyWith(file: file) ??
                            BeatFile(
                              file: file,
                              priceController: TextEditingController(),
                            ),
                      );
                    }
                  },
                  onLongPress: () {
                    onFileChanged(fileType, null);
                  },
                  child: _BeatFileType(
                    fileType: fileType,
                    beatFile: beatFile,
                  ),
                );
              },
            ),
          ),
          if (i < files.length - 1) const SizedBox(width: 16),
        ]
      ],
    );
  }
}

class _BeatFileType extends StatelessWidget {
  final String fileType;
  final BeatFile? beatFile;

  const _BeatFileType({
    required this.fileType,
    this.beatFile,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          height: 80,
          decoration: BoxDecoration(
            color: beatFile != null ? currentColorScheme(context).primary.withOpacity(0.1) : null,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: currentColorScheme(context).primary,
              width: 2,
            ),
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (beatFile != null) ...[
                    Icon(
                      Icons.graphic_eq,
                      color: currentColorScheme(context).primary,
                    ),
                    const SizedBox(height: 4),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Text(
                        beatFile!.file.path.split('/').last,
                        style: currentTextStyle(context).bodySmall?.copyWith(
                              color: currentColorScheme(context).primary,
                            ),
                        textAlign: TextAlign.center,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    )
                  ] else
                    Icon(
                      Icons.add,
                      color: currentColorScheme(context).primary,
                    )
                ],
              ),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                  decoration: BoxDecoration(
                    color: currentColorScheme(context).primary,
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(8),
                    ),
                  ),
                  child: Text(
                    fileType,
                    style: currentTextStyle(context)
                        .labelSmall
                        ?.copyWith(color: currentColorScheme(context).onPrimary, height: 1),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 200),
          switchInCurve: Curves.fastOutSlowIn,
          switchOutCurve: Curves.fastOutSlowIn,
          transitionBuilder: (child, animation) {
            return FadeTransition(
              opacity: animation,
              child: SizeTransition(
                sizeFactor: animation,
                child: child,
              ),
            );
          },
          child: beatFile != null
              ? _Price(
                  controller: beatFile!.priceController,
                )
              : SizedBox.shrink(
                  key: UniqueKey(),
                ),
        ),
      ],
    );
  }
}

class _Price extends StatelessWidget {
  final TextEditingController controller;

  const _Price({
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 8),
        TextField(
          controller: controller,
          keyboardType: TextInputType.number,
          style: currentTextStyle(context).labelMedium,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.only(left: 12, top: 16, bottom: 16),
            suffixIconConstraints: const BoxConstraints(minWidth: 36),
            hintText: 'Цена',
            suffixIcon: Icon(
              Icons.currency_ruble,
              size: 16,
              color: currentColorScheme(context).primary,
            ),
          ),
        ),
      ],
    );
  }
}
