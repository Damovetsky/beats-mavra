import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final _baseFont = GoogleFonts.poppins();

const double displayLargeSize = 57;
const double displayMediumSize = 45;
const double displaySmallSize = 36;
const double displayLargeHeight = 64;
const double displayMediumHeight = 52;
const double displaySmallHeight = 44;
final displayLarge = _baseFont.copyWith(fontSize: displayLargeSize, height: displayLargeHeight / displayLargeSize);
final displayMedium = _baseFont.copyWith(fontSize: displayMediumSize, height: displayMediumHeight / displayMediumSize);
final displaySmall = _baseFont.copyWith(fontSize: displaySmallSize, height: displaySmallHeight / displaySmallSize);

const double headlineLargeSize = 32;
const double headlineMediumSize = 28;
const double headlineSmallSize = 24;
const double headlineLargeHeight = 36;
const double headlineMediumHeight = 36;
const double headlineSmallHeight = 32;
final headlineLarge = _baseFont.copyWith(fontSize: headlineLargeSize, height: headlineLargeHeight / headlineLargeSize);
final headlineMedium =
    _baseFont.copyWith(fontSize: headlineMediumSize, height: headlineMediumHeight / headlineMediumSize);
final headlineSmall = _baseFont.copyWith(fontSize: headlineSmallSize, height: headlineSmallHeight / headlineSmallSize);

const double titleLargeSize = 22;
const double titleMediumSize = 16;
const double titleSmallSize = 14;
const double titleLargeHeight = 28;
const double titleMediumHeight = 24;
const double titleSmallHeight = 20;
final titleLarge = _baseFont.copyWith(fontSize: titleLargeSize, height: titleLargeHeight / titleLargeSize);
final titleMedium = _baseFont.copyWith(fontSize: titleMediumSize, height: titleMediumHeight / titleMediumSize);
final titleSmall = _baseFont.copyWith(fontSize: titleSmallSize, height: titleSmallHeight / titleSmallSize);

const double bodyLargeSize = 16;
const double bodyMediumSize = 14;
const double bodySmallSize = 12;
const double bodyLargeHeight = 24;
const double bodyMediumHeight = 20;
const double bodySmallHeight = 16;
final bodyLarge = _baseFont.copyWith(fontSize: bodyLargeSize, height: bodyLargeHeight / bodyLargeSize);
final bodyMedium = _baseFont.copyWith(fontSize: bodyMediumSize, height: bodyMediumHeight / bodyMediumSize);
final bodySmall = _baseFont.copyWith(fontSize: bodySmallSize, height: bodySmallHeight / bodySmallSize);

const double labelLargeSize = 14;
const double labelMediumSize = 12;
const double labelSmallSize = 11;
const double labelLargeHeight = 20;
const double labelMediumHeight = 16;
const double labelSmallHeight = 16;
final labelLarge = _baseFont.copyWith(fontSize: labelLargeSize, height: labelLargeHeight / labelLargeSize);
final labelMedium = _baseFont.copyWith(fontSize: labelMediumSize, height: labelMediumHeight / labelMediumSize);
final labelSmall = _baseFont.copyWith(fontSize: labelSmallSize, height: labelSmallHeight / labelSmallSize);

final textTheme = TextTheme(
  displayLarge: displayLarge,
  displayMedium: displayMedium,
  displaySmall: displaySmall,
  headlineLarge: headlineLarge,
  headlineMedium: headlineMedium,
  headlineSmall: headlineSmall,
  titleLarge: titleLarge,
  titleMedium: titleMedium,
  titleSmall: titleSmall,
  bodyLarge: bodyLarge,
  bodyMedium: bodyMedium,
  bodySmall: bodySmall,
  labelLarge: labelLarge,
  labelMedium: labelMedium,
  labelSmall: labelSmall,
);

TextTheme currentTextTheme(context) => Theme.of(context).textTheme;
