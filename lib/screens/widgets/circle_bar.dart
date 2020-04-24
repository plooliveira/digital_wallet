import 'package:flutter/material.dart';

import '../../size_config.dart';

Widget circleBar(bool isActive) {
  return AnimatedContainer(
    duration: Duration(milliseconds: 150),
    curve: Curves.easeInCirc,
    margin: EdgeInsets.symmetric(horizontal: 5),
    height: isActive ? SizeConfig.safeBlockHorizontal * 5.0: SizeConfig.safeBlockHorizontal * 4,
    width:  isActive ? SizeConfig.safeBlockHorizontal * 5.0: SizeConfig.safeBlockHorizontal * 4,
    decoration: BoxDecoration(

        color: isActive ? Color(0xff4463CD): Colors.black38,
        borderRadius: BorderRadius.all(Radius.circular(12))),
  );
}


