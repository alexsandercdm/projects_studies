import 'package:flutter/material.dart';

class ButtomComponent extends StatelessWidget {
  final double size;
  final Icon icon;
  final Text text;
  const ButtomComponent(
      {Key? key, required this.size, required this.icon, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: 60,
      decoration: BoxDecoration(
        border: Border.all(
            width: 2.0, color: Colors.white, style: BorderStyle.solid),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        children: [
          SizedBox(width: 60, child: icon),
          Expanded(child: text),
        ],
      ),
    );
  }
}
