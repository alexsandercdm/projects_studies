import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ListTileCustomAnimated extends StatefulWidget {
  const ListTileCustomAnimated({Key? key}) : super(key: key);

  @override
  State<ListTileCustomAnimated> createState() => _ListTileCustomAnimatedState();
}

class _ListTileCustomAnimatedState extends State<ListTileCustomAnimated> {
  final String textExemplo = '''
Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
''';
  bool isMarked = false;
  double _isOpacity = 0.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            GestureDetector(
              child: Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 8,
                  horizontal: 4,
                ),
                color: Colors.green,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text('My Expanse list 1'),
                    Icon(Icons.keyboard_arrow_down_rounded),
                  ],
                ),
              ),
            ),
            AnimatedAlign(
              alignment: Alignment.topCenter,
              duration: const Duration(seconds: 1),
              heightFactor: 0,
              child: AnimatedContainer(
                duration: const Duration(seconds: 1),
                child: Column(
                  children: [
                    const FlutterLogo(),
                    Text(textExemplo),
                  ],
                ),
              ),
            ),
            GestureDetector(
              child: Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 8,
                  horizontal: 4,
                ),
                color: Colors.green,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text('My Expanse list 1'),
                    Icon(Icons.keyboard_arrow_down_rounded),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
