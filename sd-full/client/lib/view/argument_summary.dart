import 'package:flutter/material.dart';

import 'package:client/model/argument.dart';
import 'statement_item.dart';

class ArgumentSummary extends StatefulWidget {

  final Argument argument;

  const ArgumentSummary({Key key, this.argument}) : super(key: key);

  @override
  ArgumentSummaryState createState() {
    return new ArgumentSummaryState(argument: argument);
  }
}

class ArgumentSummaryState extends State<ArgumentSummary> {

  // ArgumentSummaryController controller;
  final Argument argument;

  ArgumentSummaryState({ this.argument });

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(this.argument.title, style: TextStyle(fontWeight: FontWeight.bold)),
                        Icon(Icons.edit, color: Colors.grey, size: 16.0),
                      ]
                  ),

                  Expanded(
                    child: Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: ListView.builder(
                            itemCount: 20,
                            itemBuilder: (context, index) {
                              var s = argument.statementList.elementAt(index);
                              return StatementItem(statement: s);
                            }
                        )
                    ),
                  ),

                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(Icons.chat_bubble, color: Colors.grey, size: 16.0),
                        Icon(Icons.check, color: Colors.grey, size: 16.0),
                        Icon(Icons.close, color: Colors.grey, size: 16.0),
                      ]
                  ),
                ]
            )
        )
    );
  }
}

