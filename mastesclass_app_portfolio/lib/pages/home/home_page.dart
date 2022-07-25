import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mastesclass_app_portfolio/widgets/list_view.dart';
import '../../theme/theme_dark.dart';
import '../../theme/theme_ligth.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool myTheme = true;

  ThemeData? _theme;

  @override
  Widget build(BuildContext context) {
    _theme = myTheme ? MyThemeligth().themeData() : MyThemeDark().themeData();
    final sizeWidth = MediaQuery.of(context).size.width;
    final sizeHeigth = MediaQuery.of(context).size.height;

    return MaterialApp(
      theme: myTheme ? MyThemeligth().themeData() : MyThemeDark().themeData(),
      darkTheme: MyThemeDark().themeData(),
      home: Scaffold(
        appBar: AppBar(
          leading: SizedBox(
            width: 48,
            child: Image.asset('assets/images/logo@3x.png'),
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Atividades',
                style: _theme!.textTheme.headline1,
              ),
              Text(
                'Flutterando Masterclass',
                style: _theme!.textTheme.bodyText1,
              ),
            ],
          ),
          actions: [
            GestureDetector(
              onTap: (() {
                setState(() {
                  myTheme ? myTheme = false : myTheme = true;
                });
              }),
              child: SvgPicture.asset(
                'assets/images/Icon awesome-moon.svg',
                alignment: Alignment.centerRight,
              ),
            ),
          ],
        ),
        body: Container(),
      ),
    );
  }
}
