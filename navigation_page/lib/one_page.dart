import 'package:flutter/material.dart';
import 'widgets/custom_buttom_widget.dart';

class OnePage extends StatelessWidget {
  const OnePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .pushNamed('/twoPage', arguments: '123')
                    .then((value) => debugPrint(value.toString()));
              },
              child: const Text('Ir para segunda Página'),
            ),
          ),
          Center(
            child: CustomButtomWidget(
              onPressed: () {},
              title: 'Custom BTN',
              titleSize: 18,
            ),
          )
        ],
      ),
    );
  }
}
