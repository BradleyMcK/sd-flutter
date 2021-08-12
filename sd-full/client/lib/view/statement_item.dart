import 'package:client/model/statement.dart';
import 'package:flutter/material.dart';
import 'package:client/model/argument.dart';

class StatementItem extends StatelessWidget {

  StatementItem({Key key, this.statement}) : super(key: key);

  final Statement statement;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(4),
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            IconButton(
              onPressed: () {

              },
              icon: Icon(Icons.edit, color: Colors.grey, size: 16.0),
            ),
            Text(this.statement.question, style: TextStyle(fontWeight: FontWeight.bold)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget> [
                Text("Answer:  " + this.statement.answer),
                Icon(Icons.edit, color: Colors.grey, size: 16.0),
              ]
            ),
          ],
        )
      ),
      onPressed: () {

      }

    );
  }
}

