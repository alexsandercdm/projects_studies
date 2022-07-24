import 'package:flutter/material.dart';
import 'package:mastesclass_app_portfolio/pages/home/home_page.dart';
import 'package:mastesclass_app_portfolio/pages/splash.dart';
import 'package:mastesclass_app_portfolio/theme/theme_dark.dart';
import 'package:mastesclass_app_portfolio/theme/theme_ligth.dart';

void main() {
  runApp(MasterclassApp());
}

// ignore: must_be_immutable
class MasterclassApp extends StatelessWidget {
  bool theme;
  MasterclassApp({
    Key? key,
    this.theme = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme ? MyThemeligth().themeData() : MyThemeDark().themeData(),
      darkTheme: MyThemeDark().themeData(),
      themeMode: ThemeMode.system,
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (context) => const SplashPage(),
        '/home': (context) => const HomePage(),
      },
    );
  }
}
