import 'package:flutter/material.dart';

import 'core/ui/color_schemes.g.dart';
import 'view/home_page/home_page.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          useMaterial3: true,
          colorScheme: lightColorScheme,
        
      ),
      darkTheme: ThemeData(useMaterial3: true, colorScheme: darkColorScheme),
      home: HomePage(),
    );
  }
}
