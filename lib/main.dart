import 'package:dailydeeds/layout/home_layout.dart';
import 'package:dailydeeds/services/provider/language/languageprovider.dart';
import 'package:dailydeeds/services/provider/theme/themeprovider.dart';
import 'package:dailydeeds/services/style/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => ThemeProvider()),
    ChangeNotifierProvider(create: (context) => LanguageProvider())
  ], child: MyApp()));
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  late ThemeProvider themeprovider;
  late LanguageProvider languageprovider;
  @override
  Widget build(BuildContext context) {
    themeprovider = Provider.of<ThemeProvider>(context);
    languageprovider = Provider.of<LanguageProvider>(context);
    initsharedpref();
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

  void initsharedpref() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String lang = prefs.getString('language') ?? 'en';
    languageprovider.changelang(lang);
    String? theme = prefs.getString('theme');
    theme == 'light'
        ? themeprovider.changetheme(ThemeMode.light)
        : themeprovider.changetheme(ThemeMode.dark);
  }
}
