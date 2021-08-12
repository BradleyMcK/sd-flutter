import 'package:flutter/material.dart';

class BodyLayout extends StatelessWidget {

  BodyLayout({Key key}) : super(key: key);

  final String title = "Climate Change";
  final String description = "desc";

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
                        Text(this.title, style: TextStyle(fontWeight: FontWeight.bold)),
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
                            //var s = argument.statementList.elementAt(index);
                            return Statement();
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

/*
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
                        Text(this.title, style: TextStyle(fontWeight: FontWeight.bold)),
                        Icon(Icons.edit, color: Colors.grey, size: 16.0),
                      ]
                  ),

                  LayoutBuilder(
                    builder: (BuildContext context, BoxConstraints constraints) {
                      print(constraints.maxHeight);
                      return Container(
                        height: (constraints.maxHeight > 600.0) ? 600.0 : constraints.maxHeight,
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: ListView.builder(
                            itemCount: 20,
                            itemBuilder: (context, index) {
                              return Statement();
                            }
                        ),
                      );
                    }
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

 */

class Statement extends StatelessWidget {

  Statement({Key key}) : super(key: key);

  final String question = "Are you an idiot?";
  final String answer = "Yes";

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
            Text(this.question, style: TextStyle(fontWeight: FontWeight.bold)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget> [
                Text("Answer: " + this.answer),
                Icon(Icons.edit, color: Colors.grey, size: 16.0),
              ]
            ),
          ],
        )
      )
    );
  }
}

