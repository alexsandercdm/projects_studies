import 'package:flutter/material.dart';
import 'package:flutter_basic/pages/pageViewers/one_page.dart';
import 'package:flutter_basic/pages/pageViewers/three_page.dart';
import 'package:flutter_basic/pages/pageViewers/two_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _pageController = PageController();
  int indexNavigationBar = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AppBar Flutter Basic'),
      ),
      drawer: Drawer(
        child: ListView(children: [
          const UserAccountsDrawerHeader(
            accountEmail: Text('alex@gmail.com'),
            accountName: Text('Alex'),
            currentAccountPicture: CircleAvatar(
              child: Text('A'),
            ),
          ),
          ListTile(
            title: const Text('Item 1'),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
              setState(() {
                _pageController.jumpToPage(0);
                Navigator.pop(context);
                indexNavigationBar = 0;
              });
            },
          ),
          ListTile(
            title: const Text('Item 2'),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
              setState(() {
                _pageController.jumpToPage(1);
                Navigator.pop(context);
                indexNavigationBar = 1;
              });
            },
          ),
          ListTile(
            title: const Text('Item 3'),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
              setState(() {
                _pageController.jumpToPage(2);
                Navigator.pop(context);
                indexNavigationBar = 2;
              });
            },
          ),
        ]),
      ),
      body: PageView(
        controller: _pageController,
        children: const [
          OnePage(),
          TwoPage(),
          ThrePage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: indexNavigationBar,
          onTap: (int page) {
            setState(() {
              indexNavigationBar = page;
            });
            _pageController.animateToPage(
              page,
              duration: const Duration(milliseconds: 300),
              curve: Curves.ease,
            );
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.local_laundry_service_sharp),
              label: 'Item 1',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.local_laundry_service_sharp),
              label: 'Item 2',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.local_laundry_service_sharp),
              label: 'Item 3',
            ),
          ]),
    );
  }
}
