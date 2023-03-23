import 'package:dailydeeds/layout/home_layout.dart';
import 'package:dailydeeds/services/provider/language/languageprovider.dart';
import 'package:dailydeeds/services/provider/theme/themeprovider.dart';
import 'package:dailydeeds/services/style/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => ThemeProvider()),
    ChangeNotifierProvider(create: (context) => LanguageProvider())
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var themeprovider = Provider.of<ThemeProvider>(context);
    var languageprovider = Provider.of<LanguageProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: themeprovider.currenttheme,
      theme: AppTheme.lighttheme,
      darkTheme: AppTheme.darktheme,
      locale: Locale(languageprovider.currentlang),
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      initialRoute: HomeLayout.routeName,
      routes: {
        HomeLayout.routeName: (context) => const HomeLayout(),
      },
    );
  }
}
