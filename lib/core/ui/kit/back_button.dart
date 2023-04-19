import 'package:flutter/material.dart';

import '../color_schemes.dart';
import '../dimens.dart';
import 'bouncing_gesture_detector.dart';

class AppBackButton extends StatelessWidget {
  final VoidCallback? onTap;

  const AppBackButton({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    const vertical = (kBottomNavigationBarHeight - 32) / 2;

    return BouncingGestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(top: vertical, bottom: vertical, left: screenHorizontalMargin),
        height: 32,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: currentColorScheme(context).secondaryContainer,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Icon(
          Icons.arrow_back,
          color: currentColorScheme(context).primary,
        ),
      ),
    );
  }
}
