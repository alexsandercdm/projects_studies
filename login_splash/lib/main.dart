import 'package:flutter/material.dart';
import 'package:login_splash/pages/details_page.dart';
import 'package:login_splash/pages/home_page.dart';
import 'package:login_splash/pages/login_page.dart';
import 'package:login_splash/pages/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.green),
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => const SplashPage(),
        '/login': (context) => LoginPage(),
        '/home': (context) => const HomePage(),
        '/details': (context) => const DetailsPage(),
      },
    );
  }
}
