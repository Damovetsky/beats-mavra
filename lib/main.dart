import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:beats/view/profile_page/profile_page.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'core/di/di.dart';
import 'core/ui/theme.dart';
import 'locale_builder.dart';
import 'view/home_page/home_page.dart';
import 'view/profile_page/beat_list_page/beat_list_page.dart';

const localeGlobalKey = GlobalObjectKey<LocaleBuilderState>('localeGlobalKey');

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
      supportedLocales: const [Locale('ru', 'RU'), Locale('en', 'US')],
      path: 'assets/i18n',
      fallbackLocale: const Locale('ru', 'RU'),
      child: const App(),
    ),
  );
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ThemeProvider(
      initTheme: lightTheme,
      builder: (context, theme) {
        return LocaleBuilder(
          key: localeGlobalKey,
          builder: (context, locale) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'app_title'.tr(),
              localizationsDelegates: context.localizationDelegates,
              supportedLocales: context.supportedLocales,
              locale: locale,
              theme: theme,
              home: const HomePage(),
            );
          },
        );
      },
    );
  }
}
