import 'package:flutter/material.dart';
import 'package:digital_wallet/shared/styles.dart';
import 'package:digital_wallet/services/auth.dart';

class LoadingPage extends StatefulWidget {
  final dynamic userData;

  const LoadingPage({this.userData});

  @override
  _LoadingPageState createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  AuthServices auth = AuthServices() ;

  @override
  void initState(){
    super.initState();
    auth.loadHome(context);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('images/loading.gif'),
              SizedBox(height: 20,),
              Text(widget.userData, style: kLargeText,)
            ],
          ),
        ),
      ),
    );
  }
}
