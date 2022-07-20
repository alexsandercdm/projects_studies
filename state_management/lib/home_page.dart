import 'package:flutter/material.dart';

import 'widgets/custom_buttom_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
          ),
          CustomButtomWidget(
            onPressed: () {
              Navigator.of(context).pushNamed('/stateSet');
            },
            title: 'Gerencia de estado com Set State',
            titleSize: 18,
          ),
          CustomButtomWidget(
            onPressed: () {
              Navigator.of(context).pushNamed('/stateNotifier');
            },
            title: 'Gerencia de estado com Value Notifier',
            titleSize: 18,
          ),
        ],
      ),
    );
  }
}
