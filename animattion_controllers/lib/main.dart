import 'package:animattion_controllers/pages/exercicio_one.dart';
import 'package:animattion_controllers/pages/exercicio_two.dart';
import 'package:animattion_controllers/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/exercicioone': (context) => const ExercicioOne(),
        '/exerciciotwo': (context) => const ExercicioTwo(),
      },
    );
  }
}
