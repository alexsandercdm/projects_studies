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

class ContentPage extends StatefulWidget {
  const ContentPage({Key? key}) : super(key: key);

  @override
  State<ContentPage> createState() => _ContentPageState();
}

class _ContentPageState extends State<ContentPage> {
  bool isClick = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: AnimatedAlign(
        duration: const Duration(seconds: 2),
        alignment: isClick ? Alignment.topCenter : Alignment.bottomRight,
        child: GestureDetector(
          child: AnimatedContainer(
            duration: const Duration(seconds: 2),
            margin: const EdgeInsets.all(16),
            transformAlignment: Alignment.bottomRight,
            width: isClick ? 160 : 80,
            height: 80,
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(isClick ? 0 : 50.0),
            ),
          ),
          onTap: () {
            setState(() {
              isClick = !isClick;
            });
          },
        ),
      ),
    );
  }
}
