import 'package:meta/meta.dart';

import 'statement.dart';
import 'user.dart';

class Argument {

  String title;
  ArgumentType argumentType;
  List<Statement> statementList;
  String summary;
  User prosecutor;
  User defendant;

  Argument({ this.title = "Title"} );

  static Argument createTestArgument() {

    var argument = Argument(title: "TestArgument");
    argument.summary = "This is the summary of the argument";
    argument.statementList = List(20);
    argument.argumentType = ArgumentType.Deductive;

    for (var index = 0; index < 20; index++) {
      Statement statement = Statement(argument: argument);
      statement.question = "This is question #$index";
      statement.answer = "This is answer #$index";
      statement.explanation = "This is the statement's explanation";
      statement.questionType = QuestionType.Boolean;
      argument.statementList[index] = statement;
    }

    return argument;
  }

}

enum ArgumentType {

  Deductive,

}
