import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Animações Controladas'),
        ),
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/exercicioone');
                },
                child: const Text('Exercício 1'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/exerciciotwo');
                },
                child: const Text('Exercício 2'),
              )
            ],
          ),
        ));
  }
}
