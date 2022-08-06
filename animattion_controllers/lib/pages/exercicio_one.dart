import 'package:flutter/material.dart';

class ExercicioOne extends StatefulWidget {
  const ExercicioOne({Key? key}) : super(key: key);

  @override
  State<ExercicioOne> createState() => _ExercicioOneState();
}

class _ExercicioOneState extends State<ExercicioOne>
    with SingleTickerProviderStateMixin {
  late final AnimationController controller;
  late final Animation<double> animationSize;
  late final Animation<double> animationBorder;
  late final Animation<Alignment> animationAlign;

  bool isMarked = false;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(duration: const Duration(seconds: 1), vsync: this);
    controller.addListener(() {
      setState(() {});
    });

    animationSize = Tween<double>(begin: 100.0, end: 300.0).animate(controller);
    animationBorder = Tween<double>(begin: 100.0, end: 0.0).animate(
      CurvedAnimation(
        parent: controller,
        curve: const Interval(0.8, 1.0),
      ),
    );
    animationAlign =
        Tween<Alignment>(begin: Alignment.bottomRight, end: Alignment.topCenter)
            .animate(controller);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Exercício 1')),
      body: Align(
        alignment: animationAlign.value,
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: GestureDetector(
            child: Container(
              width: animationSize.value,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(animationBorder.value),
              ),
            ),
            onTap: () {
              isMarked = !isMarked;
              if (isMarked) {
                controller.forward();
              } else {
                controller.reverse();
              }
            },
          ),
        ),
      ),
    );
  }
}
