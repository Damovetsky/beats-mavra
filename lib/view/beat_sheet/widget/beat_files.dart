import 'dart:io';

import 'package:flutter/material.dart';

import '../../../core/ui/color_schemes.dart';
import '../../../core/ui/text_styles.dart';

class BeatFiles extends StatelessWidget {
  const BeatFiles({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const _BeatFileType(
          fileType: '.mp3',
        ),
        const SizedBox(width: 16),
        _BeatFileType(
          fileType: '.wav',
        ),
        const SizedBox(width: 16),
        _BeatFileType(
          fileType: '.zip',
          file: File('grg/fff.mpeg'),
        ),
      ],
    );
  }
}

class _BeatFileType extends StatelessWidget {
  final String fileType;
  final File? file;

  const _BeatFileType({
    required this.fileType,
    this.file,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Container(
            height: 80,
            decoration: BoxDecoration(
              color: file != null ? currentColorScheme(context).primary.withOpacity(0.1) : null,
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
                    if (file != null) ...[
                      Icon(
                        Icons.graphic_eq,
                        color: currentColorScheme(context).primary,
                      ),
                      const SizedBox(height: 4),
                      Text(
                        file!.path.split('/').last,
                        style: currentTextStyle(context).bodySmall?.copyWith(
                              color: currentColorScheme(context).primary,
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
                    ),
                  ),
                ),
              ],
            ),
          ),
          if (file != null) ...[
            const SizedBox(height: 8),
            TextField(
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
          ]
        ],
      ),
    );
  }
}
