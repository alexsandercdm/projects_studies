import 'package:flutter/material.dart';

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

class ContentHome extends StatelessWidget {
  const ContentHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;

    return SizedBox(
      width: size,
      child: Column(
        children: [
          const SizedBox(height: 150),
          SizedBox(
            width: size * 0.6,
            child: Image.asset('assets/images/Frame.png'),
          ),
          const SizedBox(
            height: 90,
          ),
          SizedBox(
            width: size * 0.8,
            child: RichText(
              textAlign: TextAlign.center,
              text: const TextSpan(
                  text: 'By tapping Create Accountor Sign In you agree to our ',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'Terms',
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.bold)),
                    TextSpan(text: '. Learn how we process your datain our '),
                    TextSpan(
                        text: 'Privacy Policy',
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.bold)),
                    TextSpan(text: ' and '),
                    TextSpan(
                        text: 'Cookies Policy',
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.bold)),
                    TextSpan(text: '.'),
                  ]),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          ButtomComponent(
            size: size * 0.9,
            icon: const Icon(
              Icons.apple,
              color: Colors.white,
              size: 30,
            ),
            text: const Text(
              'SIGN IN WITH APPLE',
              style: TextStyle(fontSize: 16, color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 18),
          ButtomComponent(
            size: size * 0.9,
            icon: const Icon(
              Icons.facebook,
              color: Colors.white,
              size: 30,
            ),
            text: const Text(
              'SIGN IN WITH FACEBOOK',
              style: TextStyle(fontSize: 16, color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 18),
          ButtomComponent(
            size: size * 0.9,
            icon: const Icon(
              Icons.messenger_rounded,
              color: Colors.white,
              size: 30,
            ),
            text: const Text(
              'SIGN IN WITH PHONE NUMBER',
              style: TextStyle(fontSize: 16, color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 40),
          const Text(
            'Trouble Signing in?',
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }
}

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
