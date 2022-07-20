import 'package:flutter/material.dart';
import 'package:navigation_page/home_page.dart';
import 'package:navigation_page/set_sate.dart';
import 'package:navigation_page/state_notifier.dart';

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
        '/': (context) => const HomePage(),
        '/stateSet': (context) => const StateSet(),
        '/stateNotifier': (context) => const StateNotifier(),
      },
    );
  }
}
