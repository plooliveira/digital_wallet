import 'package:flutter/material.dart';
import 'package:flutter_auth_buttons/flutter_auth_buttons.dart';
import 'package:digital_wallet/screens/widgets/default_textfield.dart';
import 'package:digital_wallet/shared/styles.dart';

import '../../../size_config.dart';

class Step1 extends StatefulWidget {
  final TextEditingController controller;

  const Step1({this.controller});
  @override
  _Step1State createState() => _Step1State();
}

class _Step1State extends State<Step1> {
  String _password = '';
  String _passwordConf = '';
  bool matchPassword = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: <Widget>[
        DefaultTextField(
          keyboardType: TextInputType.emailAddress,
          controller: widget.controller,
          onChanged: (String value) {
//            print(widget.controller.text);

            print(widget.controller.text);
          },
          labelText: 'E-mail',
          hintText: 'abc@whatever.com',
        ),
        SizedBox(
          height: 10,
        ),
        DefaultTextField(
          onChanged: (value) {
            _password = value;
          },
          contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
          obscureText: true,
          labelText: 'Password',
          hintText: 'Minimum of 8 digits.',
        ),
        SizedBox(
          height: 10,
        ),
        DefaultTextField(
          validator: (value) {
            if (value != _password) {
              return 'Please enter some text';
            }
            return null;
          },
          wrong: _passwordConf == ''? matchPassword: !matchPassword,
          prefixIcon: matchPassword
              ? Icon(
                  Icons.check,
                  color: Colors.green,
                )
              : null,
          onChanged: (value) {
            setState(() {
              _passwordConf = value;
              if (value == _password && _password != '') {
                matchPassword = true;
              } else {
                matchPassword = false;
              }
            });
          },
          contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
          obscureText: true,
          labelText: 'Confirm password',
          hintText: 'It must be the same above.',
        ),
        SizedBox(
          height: 20,
        ),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          Expanded(
              child: Divider(
            height: 60,
            thickness: 3,
            endIndent: 10,
          )),
          Text("Or"),
          Expanded(
              child: Divider(
            height: 60,
            thickness: 3,
            indent: 10,
          )),
        ]),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              width: SizeConfig.blockSizeHorizontal * 40,
              height: SizeConfig.blockSizeHorizontal * 12,
              child: GoogleSignInButton(
                onPressed: () {/* ... */},
                borderRadius: 5,
                darkMode: true,
                text: 'Google',
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              width: SizeConfig.blockSizeHorizontal * 40,
              height: SizeConfig.blockSizeHorizontal * 12,
              child: FacebookSignInButton(
                onPressed: () {/* ... */},
                borderRadius: 5,
                text: 'Facebook',
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        )
      ]),
    );
  }
}
