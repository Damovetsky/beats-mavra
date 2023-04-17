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
    suffixIconColor: lightColorScheme.onBackground,
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
    suffixIconColor: darkColorScheme.onBackground,
  ),
);

final inputDecorationTheme = InputDecorationTheme(
  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(16),
  ),
  errorBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(16),
  ),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(16),
  ),
);
