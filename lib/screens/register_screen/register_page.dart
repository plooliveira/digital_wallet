import 'package:flutter/material.dart';
import 'package:digital_wallet/screens/loading_screen/loading_page.dart';
import '../../size_config.dart';
import 'steps/step2.dart';
import 'steps/step1.dart';
import 'package:provider/provider.dart';
import 'package:digital_wallet/models/user_data.dart';
import 'package:digital_wallet/shared/styles.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  int _currentStep = 0;
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController userEmailController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    userNameController.dispose();
    userEmailController.dispose();
    super.dispose();
  }

  List<Step> _registerSteps() {
    List<Step> _steps = [
      Step(
        title: Text('E-mail/Password'),
        content: Step1(controller: userEmailController,),
        isActive: _currentStep >= 0,
      ),
      Step(
        title: Text('Personal data.'),
        content: Step2(controller: userNameController,),
        isActive: _currentStep >= 1,
      ),
    ];
    return _steps;
  }

  void register() {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
          builder: (context) => LoadingPage(
            userData: 'Building your Wallet...',
          )),
          (Route<dynamic> route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.black, //change your color here
          ),
          backgroundColor: Colors.white,
          title: Container(
            width: SizeConfig.blockSizeHorizontal * 38,
            child: Image.asset('images/logo_horizontal.png', ),
          ),
          elevation: 0.0,
          bottomOpacity: 0.0,
        ),
        body: Theme(
          data: ThemeData(
              canvasColor: Colors.white,
              primaryColor: kPrimaryBlue,
              buttonTheme: ButtonThemeData(
                height: 40,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
              )),
          child: Stepper(
            controlsBuilder:
                (BuildContext context, {VoidCallback onStepContinue, VoidCallback onStepCancel}) {
              return Row(
                children: <Widget>[
                  Container(
                    height: SizeConfig.blockSizeVertical * 5,
                    child: FlatButton(
                      color: Colors.black,
                      onPressed: onStepContinue,
                      child: Text(_currentStep == _registerSteps().length - 1 ?  'Register': 'Next', style: TextStyle(color: Colors.white, fontSize: SizeConfig.safeBlockHorizontal * 4.5 ),) ,
                    ),
                  ),
                  FlatButton(
                    onPressed: onStepCancel,
                    child: Text('BACK', style: TextStyle(fontSize: SizeConfig.safeBlockHorizontal * 4.5),),
                  ),
                ],
              );
            },
            onStepContinue: () {
              setState(() {
                if (_currentStep != _registerSteps().length - 1) {
                  _currentStep++;
                } else {
                  //Provider.of<UserData>(context).addUser(newUser)
                  //print();
                  register();
                }
              });
            },
            onStepCancel: () {
              setState(() {
                _currentStep > 0 ? _currentStep-- : Navigator.pop(context);
              });
            },
            steps: _registerSteps(),
            currentStep: this._currentStep,
            type: StepperType.horizontal,
          ),
        ),
      ),
    );
  }
}
