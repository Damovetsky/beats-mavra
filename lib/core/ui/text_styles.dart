import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final _baseFont = GoogleFonts.poppins();

final displayLarge = _baseFont.copyWith(fontSize: 57, height: 64 / 57);
final displayMedium = _baseFont.copyWith(fontSize: 45, height: 52 / 45);
final displaySmall = _baseFont.copyWith(fontSize: 36, height: 44 / 36);

final headlineLarge = _baseFont.copyWith(fontSize: 32, height: 36 / 28);
final headlineMedium = _baseFont.copyWith(fontSize: 28, height: 36 / 28);
final headlineSmall = _baseFont.copyWith(fontSize: 24, height: 32 / 24);

final titleLarge = _baseFont.copyWith(fontSize: 22, height: 28 / 22);
final titleMedium = _baseFont.copyWith(fontSize: 16, height: 24 / 16);
final titleSmall = _baseFont.copyWith(fontSize: 14, height: 20 / 14);

final bodyLarge = _baseFont.copyWith(fontSize: 16, height: 24 / 16);
final bodyMedium = _baseFont.copyWith(fontSize: 14, height: 20 / 14);
final bodySmall = _baseFont.copyWith(fontSize: 12, height: 16 / 12);

final labelLarge = _baseFont.copyWith(fontSize: 14, height: 20 / 14);
final labelMedium = _baseFont.copyWith(fontSize: 12, height: 16 / 12);
final labelSmall = _baseFont.copyWith(fontSize: 11, height: 16 / 11);

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

TextTheme currentTextStyle(context) => Theme.of(context).textTheme;
