import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:digital_wallet/shared/styles.dart';

import '../../size_config.dart';



class PaymentTile extends StatelessWidget {
  final String title;
  final String date;
  final double amount;
  final icon;

  const PaymentTile({@required this.title, @required this.date, @required this.amount, this.icon});

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: (){},
      color: Colors.white,
      child: ListTile(
        title: Row(
          children: <Widget>[
            icon,
            SizedBox(width: 10,),
            Expanded(
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(title),
                      Text(date, style: TextStyle(color: Colors.black45, fontSize: SizeConfig.safeBlockHorizontal * 3),),
                    ],
                  ),
                  Text('-R\$${amount.toStringAsFixed(2)}')

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
