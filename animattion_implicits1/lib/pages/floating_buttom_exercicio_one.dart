import 'package:animattion_implicits1/components/floating_buttom_custom_animated.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class FloatinButtomExercicioOne extends StatelessWidget {
  const FloatinButtomExercicioOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exercício 1'),
      ),
      body: const FloatingCustomAnimated(),
    );
  }
}
