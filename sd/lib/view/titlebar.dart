import 'package:flutter/material.dart';

const double kImageHeight = 200.0;

class TitleBar extends StatefulWidget implements PreferredSizeWidget {

  static final banner = Image(
    image: new ExactAssetImage("images/AppLogo.jpg"),
    alignment: FractionalOffset.center,
    fit: BoxFit.fitHeight,
    height: kImageHeight
  );

  @override
  _TitleBarState createState() => _TitleBarState();

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight + kImageHeight);
}

class _TitleBarState extends State<TitleBar>{

  @override
  Widget build(BuildContext context) {

    return Column(

      children: [
        TitleBar.banner,
        AppBar( title: Text("Socratic Dialogue") )
      ]);
  }
}
