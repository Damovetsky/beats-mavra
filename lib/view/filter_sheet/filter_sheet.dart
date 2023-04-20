import 'package:flutter/cupertino.dart';

import '../../core/helper/sheet_helper.dart';

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
      ),
    );
  }
}