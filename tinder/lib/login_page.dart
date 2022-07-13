import 'package:flutter/material.dart';
import 'package:tinder/content_home.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: <Color>[
            Color(0xFFED7361),
            Color(0xFFE94976),
          ])),
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(0, 0, 0, 0.0),
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(0, 0, 0, 0.0),
          shadowColor: const Color.fromRGBO(0, 0, 0, 0.0),
          leading: const Icon(
            Icons.chevron_left_rounded,
            size: 35,
          ),
        ),
        body: const ContentHome(),
      ),
    );
  }
}
