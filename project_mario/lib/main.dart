import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MarioApp());
}

class MarioApp extends StatefulWidget {
  const MarioApp({Key? key}) : super(key: key);

  @override
  State<MarioApp> createState() => _MarioAppState();
}

class _MarioAppState extends State<MarioApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  void jump() {
    debugPrint('Jump');
  }

  void moveLeft() {
    debugPrint('MoveLeft');
  }

  void moveRigth() {
    debugPrint('MoveRigth');
  }

  @override
  Widget build(BuildContext context) {
    double widthSize = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Container(
              color: Colors.blue,
            ),
          ),
          Container(
            height: 10,
            color: Colors.green,
          ),
          Expanded(
              flex: 1,
              child: Container(
                width: widthSize,
                color: Colors.brown,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: moveLeft,
                      child: const MyButtom(
                        color: Colors.white,
                        child: Icon(Icons.arrow_back),
                      ),
                    ),
                    GestureDetector(
                      onTap: jump,
                      child: const MyButtom(
                        color: Colors.white,
                        child: Icon(Icons.arrow_upward),
                      ),
                    ),
                    GestureDetector(
                      onTap: moveRigth,
                      child: const MyButtom(
                        color: Colors.white,
                        child: Icon(Icons.arrow_forward),
                      ),
                    ),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}

class MyButtom extends StatelessWidget {
  const MyButtom({
    Key? key,
    this.color = Colors.white,
    required this.child,
  }) : super(key: key);

  final Color? color;
  final Icon? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
          color: color!.withOpacity(0.4),
          borderRadius: BorderRadius.circular(20)),
      child: Center(
        child: Icon(
          child!.icon,
          key: child!.key,
          size: 40,
          color: color,
        ),
      ),
    );
  }
}
