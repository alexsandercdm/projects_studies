// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ListTileCustomAnimated extends StatefulWidget {
  const ListTileCustomAnimated({
    Key? key,
    this.isMarked = false,
    required this.title,
    required this.text,
  }) : super(key: key);

  final bool isMarked;
  final String title;
  final String text;

  @override
  State<ListTileCustomAnimated> createState() => _ListTileCustomAnimatedState();
}

class _ListTileCustomAnimatedState extends State<ListTileCustomAnimated> {
  String? textExemplo;
  String? _title;

  bool _isMarked = false;
  double _heigthFactor = 0;

  @override
  void initState() {
    super.initState();
    textExemplo = widget.text;
    _title = widget.title;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(
              style: BorderStyle.solid, color: Colors.grey, width: 1),
          bottom: BorderSide(
              style: BorderStyle.solid, color: Colors.grey, width: 1),
        ),
      ),
      child: Column(
        children: [
          GestureDetector(
            child: ListTile(
              title: Text(_title!),
              trailing: const Icon(
                Icons.keyboard_arrow_down_rounded,
              ),
              onTap: () {
                setState(() {
                  _isMarked = !_isMarked;
                  if (_isMarked) {
                    _heigthFactor = 1;
                  } else {
                    _heigthFactor = 0;
                  }
                });
              },
            ),
          ),
          ClipRect(
            child: AnimatedAlign(
              alignment: Alignment.bottomCenter,
              duration: const Duration(milliseconds: 400),
              heightFactor: _heigthFactor,
              child: Column(
                children: [
                  const FlutterLogo(
                    size: 30,
                  ),
                  Text(textExemplo!),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
