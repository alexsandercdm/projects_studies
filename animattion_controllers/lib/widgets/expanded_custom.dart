// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomMyExpandedTile extends StatefulWidget {
  final String title;
  final String text;

  const CustomMyExpandedTile({
    Key? key,
    required this.title,
    required this.text,
  }) : super(key: key);

  @override
  State<CustomMyExpandedTile> createState() => _CustomMyExpandedTileState();
}

class _CustomMyExpandedTileState extends State<CustomMyExpandedTile>
    with SingleTickerProviderStateMixin {
  bool isMarked = false;

  late final AnimationController animationController;
  late final Animation<double> heighFactor;
  late final Animation<double> angle;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
        duration: const Duration(milliseconds: 300), vsync: this);

    heighFactor = Tween(begin: 0.0, end: 1.0).animate(animationController);
    angle = Tween(begin: 0.0, end: 3.1).animate(animationController);
    animationController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        isMarked = !isMarked;
        if (isMarked) {
          animationController.forward();
        } else {
          animationController.reverse();
        }
      },
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(
              width: 1,
              style: BorderStyle.solid,
              color: Colors.grey,
            ),
          ),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(widget.title),
                Transform.rotate(
                  angle: angle.value,
                  child: const Icon(Icons.keyboard_arrow_down_rounded),
                ),
              ],
            ),
            ClipRRect(
              child: Align(
                heightFactor: heighFactor.value,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const FlutterLogo(
                      size: 60,
                    ),
                    Text(widget.text)
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
