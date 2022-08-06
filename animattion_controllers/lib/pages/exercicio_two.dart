import 'package:animattion_controllers/widgets/expanded_custom.dart';
import 'package:flutter/material.dart';

class ExercicioTwo extends StatefulWidget {
  const ExercicioTwo({Key? key}) : super(key: key);

  @override
  State<ExercicioTwo> createState() => _ExercicioTwoState();
}

class _ExercicioTwoState extends State<ExercicioTwo>
    with SingleTickerProviderStateMixin {
  late final AnimationController animationController;
  late final Animation<AlignmentGeometry> align;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(duration: const Duration(seconds: 2), vsync: this);
    align = Tween(begin: Alignment.center, end: Alignment.topCenter)
        .animate(animationController);
    animationController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exercício 2'),
      ),
      body: GestureDetector(
        child: AlignTransition(
          alignment: align,
          child: ListView.builder(
            itemCount: 30,
            itemBuilder: (_, idx) {
              return CustomMyExpandedTile(
                title: 'MyExpanded $idx',
                text: 'Descrição do texto $idx',
              );
            },
          ),
        ),
        onTap: () {
          animationController.forward();
        },
      ),
    );
  }
}
