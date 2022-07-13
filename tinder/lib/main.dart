import 'package:flutter/material.dart';
import 'package:tinder/login_page.dart';

void main() {
  runApp(const MyTinder());
}

class MyTinder extends StatelessWidget {
  const MyTinder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "My Tinder",
      home: LoginPage(),
    );
  }
}
