import 'package:flutter/material.dart';

import 'text_styles.dart';
import 'color_schemes.dart';

final lightTheme = ThemeData(
  useMaterial3: true,
  colorScheme: lightColorScheme,
  textTheme: textTheme,
  inputDecorationTheme: inputDecorationTheme.copyWith(
    enabledBorder: inputDecorationTheme.enabledBorder?.copyWith(
      borderSide: BorderSide(color: lightColorScheme.outlineVariant),
    ),
  ),
);

final darkTheme = ThemeData(
  useMaterial3: true,
  colorScheme: darkColorScheme,
  textTheme: textTheme,
  inputDecorationTheme: inputDecorationTheme.copyWith(
    enabledBorder: inputDecorationTheme.enabledBorder?.copyWith(
      borderSide: BorderSide(color: lightColorScheme.outline),
    ),
  ),
);

final inputDecorationTheme = InputDecorationTheme(
  isDense: true,
  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
  ),
  errorBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
  ),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
  ),
);
