import 'package:flutter/material.dart';

import 'model/argument.dart';
import 'view/argument_summary.dart';
import 'view/left.dart';
import 'view/right.dart';
import 'view/titlebar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var argument = Argument.createTestArgument();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Socratic Dialogue',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
          appBar: TitleBar(),
          body: ArgumentSummary(argument: argument),
      )
    );
  }
}

/*
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            LeftSide(),
            BodyLayout(),
            RightSide(),
          ]
        )
      )
*/
