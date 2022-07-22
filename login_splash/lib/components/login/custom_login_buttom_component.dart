import 'package:flutter/material.dart';
import 'package:login_splash/controllers/login_controller.dart';

class CustomLoginButtomComponent extends StatelessWidget {
  final LoginController loginController;

  const CustomLoginButtomComponent({
    Key? key,
    required this.loginController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: loginController.inLoader,
      builder: (_, inLoader, __) => inLoader
          ? const CircularProgressIndicator()
          : ElevatedButton(
              onPressed: () {
                loginController.auth().then((result) {
                  if (result) {
                    Navigator.of(context).pushReplacementNamed('/home');
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Falha ao realizar login'),
                        duration: Duration(seconds: 5),
                      ),
                    );
                  }
                });
              },
              child: const Text('Login'),
            ),
    );
  }
}
