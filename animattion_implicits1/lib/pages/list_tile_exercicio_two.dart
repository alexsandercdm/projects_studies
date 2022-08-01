import 'package:animattion_implicits1/components/list_tile_custom_animated.dart';
import 'package:flutter/material.dart';

class ListTileExercicioTwo extends StatefulWidget {
  const ListTileExercicioTwo({Key? key}) : super(key: key);

  @override
  State<ListTileExercicioTwo> createState() => _ListTileExercicioTwoState();
}

class _ListTileExercicioTwoState extends State<ListTileExercicioTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exercício 2'),
      ),
      body: const ListTileCustomAnimated(),
    );
  }
}
