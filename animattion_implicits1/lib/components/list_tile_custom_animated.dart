// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:ui';

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

  double turns = 0.0;
  Color _color = Colors.transparent;

  bool _isMarked = false;
  double? _heigthFactor;

  @override
  void initState() {
    super.initState();

    textExemplo = widget.text;
    _title = widget.title;
    _heigthFactor = 0;
  }

  void _changedRotation() {
    setState(() => turns += 1.0 / 2.0);
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
      child: InkWell(
        onTap: () {
          _changedRotation();
          setState(() {
            _isMarked = !_isMarked;
            if (_isMarked) {
              _heigthFactor = 1;
              _color = Colors.amber;
            } else {
              _heigthFactor = 0;
              _color = Colors.transparent;
            }
          });
        },
        child: Column(
          children: [
            AnimatedContainer(
              duration: const Duration(milliseconds: 100),
              padding: const EdgeInsets.all(12),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(_title!),
                    AnimatedRotation(
                      turns: turns,
                      duration: const Duration(milliseconds: 500),
                      child: const Icon(Icons.keyboard_arrow_down_rounded),
                    ),
                  ],
                ),
              ),
            ),
            ClipRect(
              child: AnimatedAlign(
                alignment: Alignment.bottomCenter,
                duration: const Duration(milliseconds: 300),
                heightFactor: _heigthFactor,
                child: Container(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      const FlutterLogo(
                        size: 60,
                      ),
                      Text(textExemplo!),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
