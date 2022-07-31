import 'package:flutter/material.dart';
import 'package:mastesclass_app_portfolio/pages/home/home_page.dart';
import 'package:mastesclass_app_portfolio/pages/splash.dart';
import 'package:mastesclass_app_portfolio/theme/theme_dark.dart';
import 'package:mastesclass_app_portfolio/theme/theme_ligth.dart';

void main() {
  runApp(const MasterclassApp());
}

// ignore: must_be_immutable
class MasterclassApp extends StatefulWidget {
  const MasterclassApp({
    Key? key,
  }) : super(key: key);

  @override
  State<MasterclassApp> createState() => _MasterclassAppState();
}

class _MasterclassAppState extends State<MasterclassApp> {
  ThemeMode? themeMode = ThemeMode.light;

  @override
  Widget build(BuildContext context) {
    debugPrint(Theme.of(context).brightness.toString());
    return MaterialApp(
      theme: MyThemeligth().themeData(),
      darkTheme: MyThemeDark().themeData(),
      themeMode: themeMode,
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (context) => const SplashPage(),
        '/home': (context) => const HomePage(),
      },
    );
  }
}
