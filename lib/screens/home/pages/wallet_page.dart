import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:digital_wallet/assets/my_flutter_app_icons.dart';
import 'package:digital_wallet/shared/styles.dart';

import '../../../size_config.dart';

class Wallet extends StatelessWidget {
  const Wallet({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(left: SizeConfig.safeBlockHorizontal * 5, right: SizeConfig.safeBlockHorizontal * 5, top: SizeConfig.blockSizeVertical * 30, bottom:SizeConfig.blockSizeVertical * 7 ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  width: 100,
                  height: 100,
                  child: InkWell(
                    onTap: (){},
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[

                        Icon(MyFlutterAppIcons.withdraw, size: SizeConfig.blockSizeVertical * 6.5 , color: kHomeBackgroundColor,),
                        Text('Sacar', style: TextStyle(fontSize: SizeConfig.safeBlockHorizontal * 5, color: kHomeBackgroundColor),),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 100,
                  height: 100,
                  child: InkWell(
                    onTap: (){},
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[

                        FaIcon(FontAwesomeIcons.mobile, size: SizeConfig.blockSizeVertical * 6.5, color: kHomeBackgroundColor,),
                        Text('Recarga', style: TextStyle(fontSize: SizeConfig.safeBlockHorizontal * 5, color: kHomeBackgroundColor),),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 100,
                  height: 100,
                  child: InkWell(
                    onTap: (){},
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[

                        FaIcon(FontAwesomeIcons.tag, size: SizeConfig.blockSizeVertical * 6.5, color: kHomeBackgroundColor,),
                        Text('Vouchers', style: TextStyle(fontSize: SizeConfig.safeBlockHorizontal * 5, color: kHomeBackgroundColor),),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  width: 100,
                  height: 100,
                  child: InkWell(
                    onTap: (){},
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[

                        FaIcon(FontAwesomeIcons.creditCard, size: SizeConfig.blockSizeVertical * 6.5, color: kHomeBackgroundColor,),
                        Text('Meu cartão', style: TextStyle(fontSize: SizeConfig.safeBlockHorizontal * 5, color: kHomeBackgroundColor),),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 100,
                  height: 100,
                  child: InkWell(
                    onTap: (){},
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[

                        FaIcon(FontAwesomeIcons.busAlt, size: SizeConfig.blockSizeVertical * 6.5, color: kHomeBackgroundColor,),
                        Text('Transporte', style: TextStyle(fontSize: SizeConfig.safeBlockHorizontal * 5, color: kHomeBackgroundColor),),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 100,
                  height: 100,
                  child: InkWell(
                    onTap: (){},
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[

                        FaIcon(FontAwesomeIcons.headset, size: SizeConfig.blockSizeVertical * 6.5, color: kHomeBackgroundColor,),
                        Text('Ajuda', style: TextStyle(fontSize: SizeConfig.safeBlockHorizontal * 5, color: kHomeBackgroundColor),),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              height: 100,
              color: Colors.black12,
              child: InkWell(
                onTap: (){},
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Container(
                      width: SizeConfig.safeBlockHorizontal * 20,
                      height: SizeConfig.safeBlockHorizontal * 20,
                      child: CircleAvatar(
                        backgroundColor: Color(0xff1CD77E),
                        child: FaIcon(FontAwesomeIcons.users, color: kHomeBackgroundColor, size: SizeConfig.safeBlockHorizontal * 10,),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Expanded(
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            Text('Traga seus amigos ', style: TextStyle(fontSize: SizeConfig.safeBlockHorizontal * 4.5, fontWeight: FontWeight.bold),),
                            Text('Transferencias entre usuarios PandaPay são gratís e não deprendem do horario bancário.'),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}