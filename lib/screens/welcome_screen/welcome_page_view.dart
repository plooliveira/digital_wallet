import 'package:flutter/material.dart';
import 'package:digital_wallet/models/user_data.dart';
import 'package:digital_wallet/screens/login_screen/login_page.dart';
import 'package:digital_wallet/screens/register_screen/register_page.dart';
import 'package:digital_wallet/screens/welcome_screen/pages/page1.dart';
import 'package:digital_wallet/screens/welcome_screen/pages/page2.dart';
import 'package:digital_wallet/screens/welcome_screen/pages/page3.dart';
import 'package:digital_wallet/shared/styles.dart';
import 'package:digital_wallet/screens/widgets/circle_bar.dart';
import 'package:provider/provider.dart';

import '../../size_config.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  int currentPageValue = 0;
  PageController _controller = PageController(
    initialPage: 0,
  );
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  final List<Widget> introPages = <Widget>[
    Page1(),
    Page2(),
    Page3(),
  ];
  void getChangedPageAndMoveBar(int page) {
    currentPageValue = page;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      child: Stack(

        alignment: AlignmentDirectional.center,
        children: <Widget>[
          PageView.builder(
            physics: ClampingScrollPhysics(),
            itemCount: introPages.length,
            onPageChanged: (int page) {
              getChangedPageAndMoveBar(page);
            },
            controller: _controller,
            itemBuilder: (context, index) {
              return introPages[index];
            },
          ),
          Stack(
            //alignment: AlignmentDirectional.bottomEnd,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: SizeConfig.blockSizeVertical * 75),
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        SizedBox(
                          width: SizeConfig.blockSizeHorizontal * 50,
                          height: SizeConfig.blockSizeHorizontal * 13,
                          child: FlatButton(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
                            color: kPrimaryBlue,
                            child: Text(
                              'Register',
                              style: kButtonText,
                            ),
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterPage()));
                            },
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Already have an account?',
                              style: kMediumText,
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              width: SizeConfig.safeBlockHorizontal * 1.5,
                            ),
                            Container(
                              padding: EdgeInsets.all(3),
                              child: InkWell(
                                child: Text(
                                  'Log in',
                                  style: kMediumText.copyWith(color: kPrimaryBlue),
                                ),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              LoginPage()));
                                },
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: SizeConfig.blockSizeVertical * 5,
                    ),
                    Container(
                       margin:
                       EdgeInsets.only(bottom: SizeConfig.blockSizeVertical * 1),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          for (int i = 0; i < introPages.length; i++)
                            if (i == currentPageValue) ...[circleBar(true)] else
                              circleBar(false),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
