import 'package:flutter/material.dart';
import 'package:navigation_page/one_page.dart';
import 'package:navigation_page/two_page.dart';

void main() {
  runApp(const NavigationPage());
}

class NavigationPage extends StatelessWidget {
  const NavigationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.green),
      initialRoute: '/',
      routes: {
        '/': (context) => const OnePage(),
        '/twoPage': (context) => const TwoPage(),
      },
    );
  }
}
