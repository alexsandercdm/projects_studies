import 'package:animattion_implicits1/pages/floating_buttom_exercicio_one.dart';
import 'package:flutter/material.dart';

import 'pages/home_pages.dart';
import 'pages/list_tile_exercicio_two.dart';

void main() {
  runApp(const MyAnimmation());
}

class MyAnimmation extends StatelessWidget {
  const MyAnimmation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/execicioone': (context) => const FloatinButtomExercicioOne(),
        '/execiciotwo': (context) => const ListTileExercicioTwo(),
      },
    );
  }
}
