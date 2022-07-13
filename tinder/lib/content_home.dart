import 'package:flutter/material.dart';
import 'package:tinder/buttom_component.dart';

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
