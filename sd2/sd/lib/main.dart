import 'package:flutter/material.dart';

import 'view/body_new.dart';
import 'view/titlebar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Socratic Dialogue',
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: Container(
        width: 800,
        height: 600,
        child: Scaffold(
          appBar: TitleBar(),
          body: BodyLayout(),
        )
      )
    );
  }
}
