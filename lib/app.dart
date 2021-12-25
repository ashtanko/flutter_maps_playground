import 'package:flutter/material.dart';
import 'package:flutter_base_template/generated/l10n.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'theme/theme.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO get from prefs
    const savedThemeMode = ThemeMode.light;

    return MaterialApp(
      theme: AppTheme.kLightTheme,
      darkTheme: AppTheme.kDarkTheme,
      themeMode: {
        ThemeMode.dark: ThemeMode.dark,
        ThemeMode.system: ThemeMode.system,
        ThemeMode.light: ThemeMode.light,
      }[savedThemeMode],
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      // home: const HomeScreen(), // TODO
      supportedLocales: const [
        Locale('en', ''),
      ],
    );
  }
}
