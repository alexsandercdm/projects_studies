import 'package:flutter/material.dart';
import 'todo_list_page.dart';

void main() {
  runApp(const TodoList());
}

class TodoList extends StatelessWidget {
  const TodoList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.green,
          appBarTheme: const AppBarTheme(color: Colors.green)),
      themeMode: ThemeMode.light,
      home: const TodoListPage(),
    );
  }
}
