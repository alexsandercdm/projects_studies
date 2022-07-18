import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Tela de Login',
      //theme: ThemeData(useMaterial3: true, colorScheme: lightColorScheme),
      //darkTheme: ThemeData(useMaterial3: false, colorScheme: lightColorScheme),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  double widthButtom = 90.0;
  double heigthButtom = 45.0;
  bool isLoading = false;
  bool click = false;

  TextEditingController controllerEmail = TextEditingController();
  TextEditingController controllerSenha = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double marginHeigh = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Column(
              children: [
                SizedBox(
                  height: (marginHeigh * 0.02),
                ),
                SizedBox(
                  width: 120,
                  child: Image.asset('assets/images/logo.png'),
                ),
                SizedBox(
                  height: (marginHeigh * 0.02),
                ),
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: controllerEmail,
                        decoration: const InputDecoration(
                          labelText: 'Email',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Digite seu email';
                          } else {
                            return null;
                          }
                        },
                      ),
                      SizedBox(
                        height: (marginHeigh * 0.03),
                      ),
                      TextFormField(
                        controller: controllerSenha,
                        decoration: const InputDecoration(
                          labelText: 'Senha',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Digite sua senha!';
                          } else {
                            return null;
                          }
                        },
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: (marginHeigh * 0.02),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Esqueci minha senha',
                      style: TextStyle(
                          color: Colors.grey,
                          decoration: TextDecoration.underline,
                          fontSize: 10),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          if (_formKey.currentState!.validate()) {
                            click = false;
                            isLoading = !isLoading;
                            isLoading ? widthButtom = 35.0 : widthButtom = 90.0;
                          } else {
                            click = true;
                          }
                        });
                      },
                      child: AnimatedContainer(
                        duration: const Duration(seconds: 2),
                        width: widthButtom,
                        height: 35,
                        decoration: const BoxDecoration(
                            color: Colors.purple,
                            borderRadius:
                                BorderRadius.all(Radius.circular(45.0))),
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Center(
                              child: isLoading
                                  ? const CircularProgressIndicator(
                                      color: Colors.white,
                                    )
                                  : const Text(
                                      'Entrar',
                                      style: TextStyle(color: Colors.white),
                                    )),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: click ? (marginHeigh * 0.05) : (marginHeigh * 0.09),
                ),
                Container(
                  width: 90,
                  height: 1,
                  color: Colors.grey,
                ),
                SizedBox(
                  height: click ? (marginHeigh * 0.05) : (marginHeigh * 0.09),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 62,
                      height: 62,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(15)),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Image.asset(
                          'assets/images/google.png',
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      width: 62,
                      height: 62,
                      decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          borderRadius: BorderRadius.circular(15)),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Image.asset(
                          'assets/images/facebook.png',
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      width: 62,
                      height: 62,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(15)),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Image.asset(
                          'assets/images/apple.png',
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: click ? (marginHeigh * 0.05) : (marginHeigh * 0.09),
                ),
                const Text('Copyright © Masterclass 2022'),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Visibility(
                    visible: true,
                    child: AnimatedContainer(
                      padding: const EdgeInsets.all(16.0),
                      duration: const Duration(seconds: 1),
                      width: MediaQuery.of(context).size.width,
                      height: click ? 50 : 0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: Colors.red[900]),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Erro no Login',
                            style: TextStyle(color: Colors.white),
                          ),
                          Icon(
                            Icons.close_rounded,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
