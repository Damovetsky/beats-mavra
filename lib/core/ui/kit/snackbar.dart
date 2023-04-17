import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';

import '../color_schemes.dart';
import '../dimens.dart';
import '../text_styles.dart';

Future<void> showSnackbar(
  BuildContext context, {
  required String title,
  required String message,
  FlushbarPosition position = FlushbarPosition.BOTTOM,
  double offset = 0,
}) async {
  Flushbar(
    flushbarPosition: position,
    duration: const Duration(seconds: 5),
    animationDuration: const Duration(milliseconds: 500),
    margin: const EdgeInsets.symmetric(horizontal: screenHorizontalMargin),
    borderRadius: BorderRadius.circular(16),
    backgroundColor: currentColorScheme(context).errorContainer,
    titleText: Text(
      title,
      style: currentTextStyle(context).bodyLarge?.copyWith(
            color: currentColorScheme(context).error,
          ),
    ),
    messageText: Text(
      message,
      style: currentTextStyle(context).bodyMedium?.copyWith(
            color: currentColorScheme(context).onErrorContainer,
          ),
    ),
    forwardAnimationCurve: Curves.fastOutSlowIn,
    reverseAnimationCurve: Curves.fastOutSlowIn,
    positionOffset: offset,
  ).show(context);
}
