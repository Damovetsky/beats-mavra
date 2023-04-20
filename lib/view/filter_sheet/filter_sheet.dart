import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../core/helper/sheet_helper.dart';
import '../../core/ui/color_schemes.dart';
import '../../core/ui/dimens.dart';
import '../../core/ui/text_styles.dart';

class FilterSheet extends StatefulWidget {
  const FilterSheet({super.key});

  static Future<void> show(BuildContext context) {
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

  List<String> currentGenres = [];

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
              ],
            ),
          ),
      ),
      ),
    );
  }
}