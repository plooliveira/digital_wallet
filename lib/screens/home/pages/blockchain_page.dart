import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:digital_wallet/models/user_data.dart';
import 'package:digital_wallet/size_config.dart';
import 'package:provider/provider.dart';
import 'package:digital_wallet/shared/styles.dart';

class BlockchainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String _userName = 'User'; //apenas demonstração;

    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(
            left: SizeConfig.safeBlockHorizontal * 5,
            right: SizeConfig.safeBlockHorizontal * 5,
            top: SizeConfig.blockSizeVertical * 28,
            bottom: SizeConfig.blockSizeVertical * 5
        ),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  //width: SizeConfig.blockSizeHorizontal * 15,
                  height: 50,
                  child: FlatButton(
                    color: kPrimaryGreen,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    onPressed: () {},
                    child: Text('My Transactions'),
                  ),
                ),
                Container(
                  //width: SizeConfig.blockSizeHorizontal * 15,
                  height: 50,
                  child: OutlineButton(
                    color: kPrimaryGreen,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    onPressed: () {},
                    child: Text('Wtransfer'),
                  ),
                ),
                SizedBox(width: 10,),
                Container(
                  width: SizeConfig.blockSizeHorizontal * 14,
                  height: SizeConfig.blockSizeHorizontal * 12,
                  child: RaisedButton(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                      onPressed: () {},
                      child: FaIcon(FontAwesomeIcons.filter),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.only(bottom: 10),
              height: 80,
              child: OutlineButton(
                padding: EdgeInsets.only(left: 3, right: 3, bottom: 5),
                onPressed: (){},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(_userName, style: kLargeText,),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[FaIcon(FontAwesomeIcons.longArrowAltRight, size: 40, color: Colors.redAccent,), Text('R\$ 25,00',style: TextStyle(fontSize: SizeConfig.safeBlockHorizontal * 4),)],
                    ),
                    Text('Fábio', style: kLargeText, ),
                    SizedBox(width: 5,),
                    Column(
                      children: <Widget>[Image.asset('images/logo_wallet.png', width: SizeConfig.safeBlockHorizontal * 10, height: SizeConfig.safeBlockHorizontal * 10,), Text('02/04/20', style: TextStyle(fontSize: SizeConfig.safeBlockHorizontal * 4),)],
                    )
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 10),
              height: 80,
              child: OutlineButton(
                padding: EdgeInsets.only(left: 3, right: 3, bottom: 5),
                onPressed: (){},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(_userName, style: kLargeText,),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[FaIcon(FontAwesomeIcons.longArrowAltLeft, size: 40, color: kPrimaryGreen,), Text('R\$ 140,00',style: TextStyle(fontSize: SizeConfig.safeBlockHorizontal * 4),)],
                    ),
                    Text('Marcos', style: kLargeText, ),
                    SizedBox(width: 5,),
                    Column(
                      children: <Widget>[Image.asset('images/logo_wallet.png', width: SizeConfig.safeBlockHorizontal * 10, height: SizeConfig.safeBlockHorizontal * 10,), Text('30/03/20', style: TextStyle(fontSize: SizeConfig.safeBlockHorizontal * 4),)],
                    )
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 10),
              height: 80,
              child: OutlineButton(
                padding: EdgeInsets.only(left: 3, right: 3, bottom: 5),
                onPressed: (){},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(_userName, style: kLargeText,),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[FaIcon(FontAwesomeIcons.longArrowAltRight, size: 40, color: Colors.redAccent,), Text('R\$ 60,00',style: TextStyle(fontSize: SizeConfig.safeBlockHorizontal * 4),)],
                    ),
                    Text('Fábio', style: kLargeText, ),
                    SizedBox(width: 5,),
                    Column(
                      children: <Widget>[Image.asset('images/logo_wallet.png', width: SizeConfig.safeBlockHorizontal * 10, height: SizeConfig.safeBlockHorizontal * 10,), Text('25/03/20', style: TextStyle(fontSize: SizeConfig.safeBlockHorizontal * 4),)],
                    )
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 10),
              height: 80,
              child: OutlineButton(
                padding: EdgeInsets.only(left: 3, right: 3, bottom: 5),
                onPressed: (){},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(_userName, style: kLargeText,),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[FaIcon(FontAwesomeIcons.longArrowAltLeft, size: 40, color: kPrimaryGreen,), Text('R\$ 47,00',style: TextStyle(fontSize: SizeConfig.safeBlockHorizontal * 4),)],
                    ),
                    Text('Géssila', style: kLargeText, ),
                    SizedBox(width: 5,),
                    Column(
                      children: <Widget>[Image.asset('images/logo_wallet.png', width: SizeConfig.safeBlockHorizontal * 10, height: SizeConfig.safeBlockHorizontal * 10,), Text('22/03/20', style: TextStyle(fontSize: SizeConfig.safeBlockHorizontal * 4),)],
                    )
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 10),
              height: 80,
              child: OutlineButton(
                padding: EdgeInsets.only(left: 3, right: 3, bottom: 5),
                onPressed: (){},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(_userName, style: kLargeText,),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[FaIcon(FontAwesomeIcons.longArrowAltLeft, size: 40, color: kPrimaryGreen,), Text('R\$ 15,00',style: TextStyle(fontSize: SizeConfig.safeBlockHorizontal * 4),)],
                    ),
                    Text('Cauê', style: kLargeText, ),
                    SizedBox(width: 5,),
                    Column(
                      children: <Widget>[Image.asset('images/logo_wallet.png', width: SizeConfig.safeBlockHorizontal * 10, height: SizeConfig.safeBlockHorizontal * 10,), Text('18/03/20', style: TextStyle(fontSize: SizeConfig.safeBlockHorizontal * 4),)],
                    )
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 10),
              height: 80,
              child: OutlineButton(
                padding: EdgeInsets.only(left: 3, right: 3, bottom: 5),
                onPressed: (){},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(_userName, style: kLargeText,),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[FaIcon(FontAwesomeIcons.longArrowAltRight, size: 40, color: Colors.redAccent,), Text('R\$ 10,00',style: TextStyle(fontSize: SizeConfig.safeBlockHorizontal * 4),)],
                    ),
                    Text('Julia', style: kLargeText, ),
                    SizedBox(width: 5,),
                    Column(
                      children: <Widget>[Image.asset('images/logo_wallet.png', width: SizeConfig.safeBlockHorizontal * 10, height: SizeConfig.safeBlockHorizontal * 10,), Text('15/03/20', style: TextStyle(fontSize: SizeConfig.safeBlockHorizontal * 4),)],
                    )
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
