import 'dart:math';

import 'package:flutter/material.dart';
import 'widgets/custom_buttom_widget.dart';

class StateNotifier extends StatefulWidget {
  const StateNotifier({Key? key}) : super(key: key);

  @override
  State<StateNotifier> createState() => _StateNotifierState();
}

class _StateNotifierState extends State<StateNotifier> {
  ValueNotifier<int> valorAleatorio = ValueNotifier<int>(0);

  random() async {
    for (int i = 0; i < 10; i++) {
      await Future.delayed(const Duration(seconds: 1));
      valorAleatorio.value = Random().nextInt(1000);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Value Notivier',
          style: TextStyle(fontSize: 18),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ValueListenableBuilder(
              valueListenable: valorAleatorio,
              builder: (_, value, __) => Text('Valor é: $value'),
            ),
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
