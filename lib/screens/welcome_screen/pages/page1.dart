import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:digital_wallet/shared/styles.dart';

import '../../../size_config.dart';

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 6,
          child: Padding(
            padding: const EdgeInsets.only(top: 50.0, bottom: 3),
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/background_page1.png"),
                      alignment: Alignment.topCenter
                  )),
            ),
          ),
        ),
        Expanded(
          flex: 5,
          child: Container(
            padding: EdgeInsets.only(left: SizeConfig.blockSizeHorizontal * 3, right: SizeConfig.blockSizeHorizontal * 3, top: SizeConfig.blockSizeHorizontal * 3),
            child: Text(
              'Simplify your online shopping experience.',
              style: kLargeText.copyWith(fontSize: SizeConfig.safeBlockHorizontal * 7.5),
              textAlign: TextAlign.center,
            ),
          ),
        )
      ],
    );
  }
}

//
