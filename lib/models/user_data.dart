import 'package:flutter/material.dart';
import 'package:digital_wallet/models/user.dart';


class UserData extends ChangeNotifier {
  List<User> _users = [];

  void addUser({String newUser, String newEmail}) {
    _users.add(User(name: newUser, email: newEmail));
    notifyListeners();
  }

  String userName(index){
    return _users[index].name;

  }

  String userEmail(index){
    return _users[index].email;
  }

  int get usersCount => _users.length;
}