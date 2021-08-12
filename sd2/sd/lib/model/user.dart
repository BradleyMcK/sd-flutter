import 'package:meta/meta.dart';

import 'statement.dart';

class User {

  int id;
  String name;
  String email;

  User({@required this.id, this.name});

  @override
  String toString() {
    return "$id";
  }
}

