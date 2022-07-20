import 'package:flutter/material.dart';

class OnePage extends StatelessWidget {
  const OnePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context)
                .pushNamed('/twoPage', arguments: '123')
                .then((value) => print(value));
          },
          child: const Text('Ir para segunda Página'),
        ),
      ),
    );
  }
}
