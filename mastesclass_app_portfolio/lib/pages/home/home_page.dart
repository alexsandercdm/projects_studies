import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mastesclass_app_portfolio/widgets/list_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ThemeData? _theme;

  @override
  Widget build(BuildContext context) {
    _theme = Theme.of(context);
    final sizeWidth = MediaQuery.of(context).size.width;
    final sizeHeigth = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: _theme!.scaffoldBackgroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 48,
                          child: Image.asset('assets/images/logo@3x.png'),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
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
                          if (_theme!.brightness == Brightness.light) {
                          } else {}
                        });
                      }),
                      child: SvgPicture.asset(
                        'assets/images/icon_moon.svg',
                        alignment: Alignment.centerRight,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                MyListViewCustom(size: sizeHeigth),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(3),
            color: _theme!.scaffoldBackgroundColor,
            width: sizeWidth,
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset(
                      'assets/images/Icon-feather-target.svg',
                      color: Colors.black,
                      width: 23,
                    ),
                    const Text('Atividades'),
                  ],
                ),
                Container(
                  decoration: const BoxDecoration(
                    border: Border(),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset(
                      'assets/images/Icon-awesome-github.svg',
                      color: Colors.black,
                      width: 23,
                    ),
                    const Text('Repositórios'),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Icon(
                      Icons.person,
                      size: 23,
                    ),
                    Text('Sobre o dev'),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
