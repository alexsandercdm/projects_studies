import 'package:flutter/material.dart';

class MyListViewCustom extends StatelessWidget {
  final double size;
  const MyListViewCustom({
    Key? key,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 2,
      itemBuilder: (context, index) {
        return Container(
          width: size,
          height: 200,
          color: Colors.amber,
          child: Text('Item: $index'),
        );
      },
    );
  }
}
