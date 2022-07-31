// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mastesclass_app_portfolio/controllers/home_controller.dart';
import 'package:mastesclass_app_portfolio/model/aulas_model.dart';
import 'package:mastesclass_app_portfolio/repositories/home_repository_mock.dart';

class MyListViewCustom extends StatefulWidget {
  final double size;

  const MyListViewCustom({
    Key? key,
    required this.size,
  }) : super(key: key);

  @override
  State<MyListViewCustom> createState() => _MyListViewCustomState();
}

class _MyListViewCustomState extends State<MyListViewCustom> {
  final HomeController _homeController = HomeController(HomeRepositoryMock());

  ThemeData? _theme;

  @override
  void initState() {
    super.initState();
    _homeController.fetch();
  }

  @override
  Widget build(BuildContext context) {
    _theme = Theme.of(context);
    return SizedBox(
      height: widget.size - 200,
      child: ValueListenableBuilder<List<AulasModel>>(
          valueListenable: _homeController.aulas,
          builder: (_, aulas, __) {
            return ListView.separated(
              itemCount: aulas.length,
              itemBuilder: (_, index) {
                return Container(
                  width: widget.size,
                  height: 200,
                  decoration: BoxDecoration(
                      color: _theme!.highlightColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 40,
                                  height: 40,
                                  padding: const EdgeInsets.all(6),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(40),
                                      color: Colors.blue),
                                  child: SvgPicture.asset(
                                    aulas[index].iconSvg,
                                    color: Theme.of(context).highlightColor,
                                    width: 10,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      aulas[index].title,
                                      style: _theme!.textTheme.headline2,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const Text('Exercícios:')
                          ],
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: Text(
                            aulas[index].description,
                            style: _theme!.textTheme.bodyText2,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset(
                                  'assets/images/Icon-awesome-github.svg',
                                  color: Colors.black,
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                const Text('Acessar código fonte'),
                              ],
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              child: const Text('Ver mais'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
              separatorBuilder: (_, __) {
                return const SizedBox(
                  height: 8,
                );
              },
            );
          }),
    );
  }
}
