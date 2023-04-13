import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'core/di/di.dart';
import 'core/ui/color_schemes.g.dart';

void main() {
  configureDependencies();
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Beats',
      theme: ThemeData(useMaterial3: true, colorScheme: lightColorScheme),
      darkTheme: ThemeData(useMaterial3: true, colorScheme: darkColorScheme),
      home: Container(),
    );
  }
}
