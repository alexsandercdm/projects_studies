import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
    final sizeHeigth = MediaQuery.of(context).size.width;

    return MaterialApp(
      theme: myTheme ? MyThemeligth().themeData() : MyThemeDark().themeData(),
      darkTheme: MyThemeDark().themeData(),
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Container(
            width: sizeWidth,
            margin: const EdgeInsets.symmetric(vertical: 36),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 48,
                          child: Image.asset('assets/images/logo@3x.png'),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
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
                      ],
                    ),
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
                const SizedBox(
                  height: 18,
                ),
                Container(
                  width: sizeWidth,
                  height: 200,
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(10)),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Flutterando',
                    style: TextStyle(color: _theme!.highlightColor),
                  ),
                ),
                Text(
                  'Flutterando',
                  style: _theme!.textTheme.headline2,
                ),
                Text(
                  'Flutterando',
                  style: _theme!.textTheme.bodyText1,
                ),
                Text(
                  'Flutterando',
                  style: _theme!.textTheme.bodyText2,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
