import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Meu Aplicativo',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.black,
          ),
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(),
                const Logo(),
                // const Image(
                //   image: AssetImage('assets/images/logo.png'),
                //   alignment: Alignment.center,
                //   width: 100,
                // ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(36, 28, 36, 57),
                  child: Column(
                    children: const [
                      Text(
                        'Get your money under control',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w700,
                          fontSize: 27,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      Text(
                        'Manage your expenses.',
                        style: TextStyle(
                          color: Colors.grey,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        'Seamlessly.',
                        style: TextStyle(
                          color: Colors.grey,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(
                      MediaQuery.of(context).size.width,
                      40,
                    ),
                    primary: const Color(0XFF5e5ce5),
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(18),
                  ),
                  onPressed: () => debugPrint('Hello, world'),
                  child: const Text('Sign Up With Email ID'),
                ),
                const SizedBox(
                  height: 9,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(
                      MediaQuery.of(context).size.width,
                      40,
                    ),
                    primary: Colors.white,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(18),
                  ),
                  onPressed: () => debugPrint('Hello, world'),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Image(
                        image: AssetImage(
                          'assets/images/googleLogin.png',
                        ),
                        alignment: Alignment.center,
                        width: 20,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Sign Up with Google',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 18),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 0,
                    vertical: 9,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Already have an account?',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      TextButton(
                        onPressed: () => debugPrint('Hello, World!'),
                        child: const Text(
                          'Sign In',
                          style: TextStyle(
                            fontStyle: FontStyle.normal,
                            decoration: TextDecoration.underline,
                            decorationStyle: TextDecorationStyle.solid,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 9,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Logo extends StatelessWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 45,
                height: 45,
                decoration: const BoxDecoration(
                  color: Color(0XFF5e5ce5),
                  borderRadius: BorderRadius.all(Radius.circular(45.0)),
                ),
              ),
              Container(
                width: 45,
                height: 45,
                decoration: const BoxDecoration(
                    color: Color(0XFF5e5ce5),
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(45.0))),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 45,
                height: 100,
                decoration: const BoxDecoration(
                  color: Color(0XFF5e5ce5),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(70.0),
                    bottomLeft: Radius.circular(70.0),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
