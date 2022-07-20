import 'package:flutter/material.dart';
import 'package:navigation_page/controllers/posts_controller.dart';

import '../widgets/custom_buttom_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PostsController _controller = PostsController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
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
            CustomButtomWidget(
              onPressed: () {
                _controller.callAPI();
              },
              title: 'Call API',
              titleSize: 18,
            ),
            AnimatedBuilder(
              animation:
                  Listenable.merge([_controller.posts, _controller.inLoader]),
              builder: (_, __) => _controller.inLoader.value
                  ? const CircularProgressIndicator()
                  : ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: _controller.posts.value.length,
                      itemBuilder: (_, index) => ListTile(
                        title: Text(_controller.posts.value[index].title),
                      ),
                    ),
            )
          ],
        ),
      ),
    );
  }
}
