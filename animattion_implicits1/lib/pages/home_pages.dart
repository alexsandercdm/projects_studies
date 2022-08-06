import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.close),
        title: const Text('Desafio Animações'),
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/execicioone');
              },
              child: const Text('Exercício 1'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/execiciotwo');
              },
              child: const Text('Exercício 2'),
            ),
          ],
        ),
      ),
    );
  }
}
