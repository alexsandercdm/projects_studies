import 'package:flutter/material.dart';

class TwoPage extends StatelessWidget {
  //final String args;
  const TwoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.blue.shade100,
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            if (Navigator.of(context).canPop()) {
              Navigator.of(context).pop('Retorno');
            }
          },
          child: Text('Voltar para primeira Página $args'),
        ),
      ),
    );
  }
}
