import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'core/di/di.dart';
import 'core/ui/router/router.dart';
import 'core/ui/theme.dart';
import 'locale_builder.dart';

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
      child: App(),
    ),
  );
}

class App extends StatelessWidget {
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return ThemeProvider(
      initTheme: lightTheme,
      builder: (context, theme) {
        return LocaleBuilder(
          key: localeGlobalKey,
          builder: (context, locale) {
            return MaterialApp.router(
              routerConfig: _appRouter.config(),
              debugShowCheckedModeBanner: false,
              title: 'app_title'.tr(),
              localizationsDelegates: context.localizationDelegates,
              supportedLocales: context.supportedLocales,
              locale: locale,
              theme: theme,
            );
          },
        );
      },
    );
  }
}
