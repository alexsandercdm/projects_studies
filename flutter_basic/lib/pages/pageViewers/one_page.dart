import 'package:flutter/material.dart';

class OnePage extends StatelessWidget {
  const OnePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 200,
          decoration: const BoxDecoration(
            color: Colors.blue,
          ),
          child: const Center(
            child: Text(
              'Olá Mundo!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
              ),
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 200,
          decoration: const BoxDecoration(
            color: Colors.red,
          ),
          child: const Center(
            child: Text(
              'Olá Mundo 2!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
              ),
            ),
          ),
        ),
        Row(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.5,
              height: 100,
              color: Colors.amber,
              child: const Center(
                  child: Text(
                'Coluna 1',
                style: TextStyle(color: Colors.white, fontSize: 20),
              )),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.5,
              height: 100,
              color: Colors.deepPurple,
              child: const Center(
                  child: Text(
                'Coluna 1',
                style: TextStyle(color: Colors.white, fontSize: 20),
              )),
            ),
          ],
        )
      ],
    );
  }
}
