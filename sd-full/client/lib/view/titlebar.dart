import 'package:flutter/material.dart';

class TitleBar extends StatefulWidget implements PreferredSizeWidget {
  TitleBar({Key key}) : preferredSize = Size.fromHeight(kToolbarHeight), super(key: key);

  @override
  final Size preferredSize; // default is 56.0

  @override
  _TitleBarState createState() => _TitleBarState();
}

class _TitleBarState extends State<TitleBar>{

  @override
  Widget build(BuildContext context) {
    return AppBar( title: Text("Socratic Dialogue") );
  }
}
