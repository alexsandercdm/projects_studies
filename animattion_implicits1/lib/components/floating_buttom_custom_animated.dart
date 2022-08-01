import 'package:flutter/material.dart';

class FloatingCustomAnimated extends StatefulWidget {
  const FloatingCustomAnimated({Key? key}) : super(key: key);

  @override
  State<FloatingCustomAnimated> createState() => _FloatingCustomAnimatedState();
}

class _FloatingCustomAnimatedState extends State<FloatingCustomAnimated> {
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
