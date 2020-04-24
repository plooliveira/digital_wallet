import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:digital_wallet/screens/home/home_page.dart';
import 'package:digital_wallet/screens/loading_screen/loading_page.dart';
import 'package:digital_wallet/screens/widgets/default_textfield.dart';
import 'package:digital_wallet/shared/styles.dart';
import 'package:digital_wallet/size_config.dart';
import 'package:flutter_auth_buttons/flutter_auth_buttons.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextInputType keyboardType = TextInputType.emailAddress;

  void login(){
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => LoadingPage(userData: 'Carregando sua carteira...',)),
          (Route<dynamic> route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(

      body: Stack(
        children: <Widget>[
          Center(
            child: SingleChildScrollView(
              child:

                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: SizeConfig.blockSizeHorizontal * 8,),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(
                          //top: SizeConfig.blockSizeVertical * 10,
                          bottom: SizeConfig.blockSizeVertical * 5,
                          left: SizeConfig.blockSizeVertical * 2,
                          right: SizeConfig.blockSizeVertical * 2,
                        ),
                        child: Image(
                          image: AssetImage('images/logo_horizontal.png'),
                        ),
                      ),
                      DefaultTextField(
                        keyboardType: keyboardType,
                        onChanged: (String value){

                        },
                        labelText: 'Login',
                        //hintText: 'E-mail ou CPF/CNPJ',
                      ),
                      SizedBox(height: 10,),
                     DefaultTextField(
                       onChanged: (value){},
                       contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                       obscureText: true,
                       labelText: 'Password',
                       //hintText: 'Entry your password',
                     ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: SizeConfig.blockSizeHorizontal * 66,
                        height: SizeConfig.blockSizeHorizontal * 12,
                        child: FlatButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          color: Colors.black54,
                          child: Text(
                            'Sigin',
                            style: kButtonText,
                          ),
                          onPressed: () {
                            login();
                          },
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      InkWell(
                        onTap: (){},
                        child: Text(
                          'Forgot password?',
                          style:
                              TextStyle(fontSize: SizeConfig.safeBlockHorizontal * 3.5, color:  kPrimaryBlue),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Expanded(
                                child: Divider(height: 60, thickness: 3, endIndent: 10,)
                            ),

                            Text("OR"),

                            Expanded(
                                child: Divider(height: 60, thickness: 3, indent: 10,)
                            ),
                          ]
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            width: SizeConfig.blockSizeHorizontal * 40,
                            height: SizeConfig.blockSizeHorizontal * 12,
                            child: GoogleSignInButton(
                              onPressed: () {login();},
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
                              onPressed: () {login(); },
                              borderRadius: 5,
                              text: 'Facebook',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )

            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 8.0),
              child: GestureDetector(
                child: Icon(
                  Icons.arrow_back,
                  size: 25,
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ),

        ],
      ),
    ));
  }
}


