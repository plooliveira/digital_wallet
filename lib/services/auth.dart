import 'package:flutter/material.dart';
import 'package:digital_wallet/screens/home/home_page.dart';

class AuthServices {
  Future getDataLoggin() async {
    await Future.delayed(const Duration(milliseconds: 4000), () {
        return null;
    });
  }

  void loadHome(dynamic context) async {
    var user = await getDataLoggin();
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => HomePage()),
          (Route<dynamic> route) => false,
    );
  }
}
