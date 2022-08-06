import 'package:animattion_implicits1/components/list_tile_custom_animated.dart';
import 'package:flutter/material.dart';

class ListTileExercicioTwo extends StatefulWidget {
  const ListTileExercicioTwo({Key? key}) : super(key: key);

  @override
  State<ListTileExercicioTwo> createState() => _ListTileExercicioTwoState();
}

class _ListTileExercicioTwoState extends State<ListTileExercicioTwo> {
  bool isMarked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exercício 2'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height - 150,
            child: ListView.builder(
              itemCount: 20,
              itemBuilder: (_, index) {
                return ListTileCustomAnimated(
                  text: 'Title title title title $index',
                  title: 'MyExpanded $index',
                  isMarked: false,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
