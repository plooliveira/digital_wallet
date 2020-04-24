import 'package:flutter/material.dart';
import 'package:digital_wallet/shared/styles.dart';

import '../../../size_config.dart';

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 7,
          child: Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/background_page2.png"),
                      alignment: Alignment.topCenter
                  )),
            ),
          ),
        ),
        Expanded(
          flex: 6,
          child: Container(
            padding: EdgeInsets.only(left: SizeConfig.blockSizeHorizontal * 3, right: SizeConfig.blockSizeHorizontal * 3, top: SizeConfig.blockSizeHorizontal * 4),
            child: Text(
              'Withdraw your money wherever you want.',
              style: kLargeText.copyWith(fontSize: SizeConfig.safeBlockHorizontal * 7.5),
              textAlign: TextAlign.center,
            ),
          ),
        )
      ],
    );
  }
}
