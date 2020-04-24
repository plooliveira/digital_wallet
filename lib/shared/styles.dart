import 'package:flutter/material.dart';

import '../size_config.dart';

const Color kHomeBackgroundColor = Color(0xff212121);
const Color kPrimaryGreen = Color(0xff1CD77E);
const Color kPrimaryBlue = Color(0xff4463CD);

TextStyle kLargeText = TextStyle(
  fontFamily: 'Lato',
  fontSize: SizeConfig.safeBlockHorizontal * 5.6,
  color: Color(0xff4F5A65),
);
TextStyle kDefaultText = TextStyle(
    fontFamily: 'Lato',
    fontSize: 20,
    color: Color(0xff4F5A65), //#4F5A65
    fontWeight: FontWeight.w500
);
TextStyle kMediumText = TextStyle(
  fontFamily: 'Lato',
    fontSize: SizeConfig.safeBlockHorizontal * 4.6,
    color: Color(0xff4F5A65), //#4F5A65
    fontWeight: FontWeight.w500
);
TextStyle kLabelText = TextStyle(
    fontFamily: 'Lato',
    fontSize: 18,
    color: Color(0xff4F5A65), //#4F5A65
    //fontWeight: FontWeight.w400
);
TextStyle kHintText = TextStyle(
    fontFamily: 'Lato',
    fontSize: 14,
    color: Colors.grey, //#4F5A65
    fontWeight: FontWeight.w500
);
TextStyle kButtonText = TextStyle(color: Colors.white, fontFamily: 'Lato', fontSize: SizeConfig.safeBlockHorizontal * 5);