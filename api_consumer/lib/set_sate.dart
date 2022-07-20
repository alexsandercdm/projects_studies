import 'dart:math';

import 'package:flutter/material.dart';
import 'widgets/custom_buttom_widget.dart';

class StateSet extends StatefulWidget {
  const StateSet({Key? key}) : super(key: key);

  @override
  State<StateSet> createState() => _StateSetState();
}

class _StateSetState extends State<StateSet> {
  int valorAleatorio = 0;

  random() async {
    for (int i = 0; i < 10; i++) {
      await Future.delayed(const Duration(seconds: 1));

      setState(() {
        valorAleatorio = Random().nextInt(1000);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'setState',
          style: TextStyle(fontSize: 18),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Valor é: $valorAleatorio'),
            CustomButtomWidget(
              onPressed: () => random(),
              title: 'Custom BTN',
              titleSize: 18,
            ),
          ],
        ),
      ),
    );
  }
}
