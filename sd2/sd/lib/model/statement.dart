import 'package:meta/meta.dart';

import 'argument.dart';

class Statement {

  final Argument argument;
  QuestionType questionType;
  String question;
  String explanation;
  String answer;

  Statement({@required this.argument});

  @override
  String toString() {
    return "Argument : $argument.name";
  }
}

enum QuestionType {

  Boolean,
  Numeric,
  Percentage,
  Textual

}
