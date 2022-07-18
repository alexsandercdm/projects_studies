import 'package:flutter/material.dart';

void main() {
  runApp(const MyAnimmation());
}

class MyAnimmation extends StatelessWidget {
  const MyAnimmation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.close),
        title: const Text('Desafio Botão Flutuante'),
      ),
      body: const ContentPage(),
    );
  }
}

class ContentPage extends StatelessWidget {
  const ContentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      transformAlignment: Alignment.bottomRight,
      width: 80,
      height: 80,
      decoration: BoxDecoration(
          color: Colors.amber, borderRadius: BorderRadius.circular(50.0)),
    );
  }
}
