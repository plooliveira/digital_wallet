import 'package:flutter/material.dart';
import 'package:digital_wallet/models/user_data.dart';
import 'package:digital_wallet/screens/welcome_screen/welcome_page_view.dart';
import 'package:provider/provider.dart';
import 'size_config.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        textTheme: TextTheme(
          body1: TextStyle(fontFamily: 'Lato'),
          body2: TextStyle(fontFamily: 'Lato'),
          button: TextStyle(fontFamily: 'Lato'),
          caption: TextStyle(fontFamily: 'Lato'),
          display1: TextStyle(fontFamily: 'Lato'),
          display2: TextStyle(fontFamily: 'Lato'),
          display3: TextStyle(fontFamily: 'Lato'),
          display4: TextStyle(fontFamily: 'Lato'),
          headline: TextStyle(fontFamily: 'Lato'),
          subhead: TextStyle(fontFamily: 'Lato'), // <-- that's the one
          title: TextStyle(fontFamily: 'Lato'),
        ),
      ),
      home: SafeArea(child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: WelcomePage()),

      ),
    );
  }
}
