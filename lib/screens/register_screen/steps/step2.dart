import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:digital_wallet/screens/widgets/default_textfield.dart';
import 'package:digital_wallet/size_config.dart';
import 'package:brasil_fields/brasil_fields.dart';




class Step2 extends StatefulWidget {
  final TextEditingController controller;
    Step2({this.controller});

  @override
  _Step2State createState() => _Step2State();
}

class _Step2State extends State<Step2> {


  bool switchToCnpj = false;
  int _currentStep = 0;
  String name = 'Anônimo';
  getName(String value){
      //widget.controller.text = value.split(' ')[0].capitalize();
      print(widget.controller.value.text);
//    switchToCnpj == false ?
//    name = value.split(' ')[0].capitalize() :
//    name = value;
    //Provider.of<UserData>(context, listen: false).addUser(name);
  }

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              DefaultTextField(
                controller: widget.controller,
                onChanged: getName,
                labelText: 'Name',

              ),
              SizedBox(
                height: 10,
              ),
              DefaultTextField(
                keyboardType: TextInputType.numberWithOptions(),
                labelText: 'SSN',
                hintText: '000-00-0000',
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('Phone number'),
                      SizedBox(width: SizeConfig.blockSizeHorizontal * 50,),
                      Text('Cod.'),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Expanded(
                        flex: 6,
                        child: Container(
                          height: 40,
                          child: DefaultTextField(
                            keyboardType: TextInputType.numberWithOptions(),
                            hintText: 'Eg. (200)-900-0000',
                            contentPadding: EdgeInsets.symmetric(vertical: 0),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                          height: 40,
                          child: FlatButton(
                            color: Colors.black45,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            onPressed: () {},
                            child: Text(
                              'Verify',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: SizeConfig.safeBlockHorizontal * 3),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                          height: 40,
                          child: DefaultTextField(
                            keyboardType: TextInputType.number,
                            contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                            inputFormatters: [
                              WhitelistingTextInputFormatter.digitsOnly,
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 10,),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}


