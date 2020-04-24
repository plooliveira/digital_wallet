import 'package:flutter/material.dart';
import 'package:digital_wallet/models/user_data.dart';
import 'package:digital_wallet/screens/widgets/default_textfield.dart';

import 'package:digital_wallet/shared/styles.dart';
import 'package:provider/provider.dart';

import '../../../size_config.dart';

class Help extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _userName = 'User'; //apenas demonstração
    final _userEmail ='user@whatever.com'; //apenas demonstração

    return SingleChildScrollView(
      child: Container(
          color: Colors.white,
          //height: SizeConfig.blockSizeVertical * 70,
          padding: EdgeInsets.only(
            left: SizeConfig.safeBlockHorizontal * 5,
            right: SizeConfig.safeBlockHorizontal * 5,
            top: SizeConfig.blockSizeVertical * 28,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Ajustes',
                style: kLargeText.copyWith(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              DefaultTextField(
                //inline: true,
                initialValue: _userName,
              ),
              SizedBox(
                height: 10,
              ),
              DefaultTextField(
                onChanged: (value) {},
                //inline: true,
                initialValue: _userEmail,
              ),
              SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: 50,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    color: kPrimaryGreen,
                    onPressed: () {},
                    child: Text(
                      'Save edition',
                      style: kButtonText,
                    ),
                  ),
                ),
              ),
              Container(
                //padding: EdgeInsets.symmetric(horizontal: 20),
                child: Divider(
                  height: 30,
                  thickness: 1.5,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    width: SizeConfig.blockSizeHorizontal * 42,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      color: Colors.amberAccent,
                      onPressed: () {},
                      child: Text(
                        'Change PIN',
                        style: kButtonText.copyWith(
                            color: kHomeBackgroundColor,
                            fontSize: SizeConfig.safeBlockHorizontal * 4.5),
                      ),
                    ),
                  ),
                  Container(
                    width: SizeConfig.blockSizeHorizontal * 42,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      color: kHomeBackgroundColor,
                      onPressed: () {},
                      child: Text(
                        'Invite friends',
                        style: kButtonText.copyWith(
                            fontSize: SizeConfig.safeBlockHorizontal * 4.5),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
