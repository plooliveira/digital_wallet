import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:digital_wallet/models/payment_data.dart';
import 'package:digital_wallet/screens/widgets/payment_tile.dart';
import 'package:digital_wallet/shared/styles.dart';

import '../../../size_config.dart';

class Payment extends StatelessWidget {

  PaymentData payments = PaymentData();

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: SizeConfig.blockSizeVertical * 70,
      padding: EdgeInsets.only(left: SizeConfig.safeBlockHorizontal * 5, right: SizeConfig.safeBlockHorizontal * 5, top: SizeConfig.blockSizeVertical * 28,  ),
      child: Column(
        //mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: SizeConfig.safeBlockHorizontal * 4),
            child: Text('Pague com:', style: kLargeText,),
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                width: SizeConfig.blockSizeVertical * 20,
                height: SizeConfig.blockSizeVertical * 14,
                child: InkWell(
                  onTap: (){},
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[

                      FaIcon(FontAwesomeIcons.qrcode, size: SizeConfig.blockSizeVertical * 10 , color: kHomeBackgroundColor,),
                      Text('Código QR', style: TextStyle(fontSize: SizeConfig.safeBlockHorizontal * 4, color: kHomeBackgroundColor),),
                    ],
                  ),
                ),
              ),
              Container(
                width: SizeConfig.blockSizeVertical * 20,
                height: SizeConfig.blockSizeVertical * 14,
                child: InkWell(
                  onTap: (){},
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[

                      FaIcon(FontAwesomeIcons.barcode, size: SizeConfig.blockSizeVertical * 10, color: kHomeBackgroundColor,),
                      Text('Código de Barras', style: TextStyle(fontSize: SizeConfig.safeBlockHorizontal * 4, color: kHomeBackgroundColor),),
                    ],
                  ),
                ),
              ),

            ],
          ),
          SizedBox(height: 20,),
          Padding(
            padding: EdgeInsets.only(left: SizeConfig.safeBlockHorizontal * 4),
            child: Text('Histórico pagamentos', style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold),),
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: payments.paymentsCounter,
              itemBuilder: (context, index) {
                return PaymentTile(title: payments.getTitle(index), date: payments.getDate(index), amount: payments.getAmount(index), icon: payments.getIcon(index),);
              },
            ),
          )
        ],
      ),
    );
  }
}
