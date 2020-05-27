import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:digital_wallet/assets/my_flutter_app_icons.dart';
import 'package:digital_wallet/models/user_data.dart';
import 'package:digital_wallet/screens/home/pages/blockchain_page.dart';
import 'package:digital_wallet/screens/home/pages/help_page.dart';
import 'package:digital_wallet/screens/home/pages/pages_in_home.dart';
import 'package:digital_wallet/screens/home/pages/transfer_page.dart';
import 'package:digital_wallet/shared/styles.dart';
import '../../size_config.dart';
import 'package:digital_wallet/shared/extensions.dart';
import 'dart:core';

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  bool _visible = true;

  int currentPageValue = 0;
  PageController _controller = PageController(
    initialPage: 0,
  );

  List<BottomNavigationBarItem> buildBottomNavBarItems() {
    return [
      BottomNavigationBarItem(
          icon: FaIcon(
            FontAwesomeIcons.wallet,
            size: SizeConfig.safeBlockHorizontal * 9,
          ),
          title: Text('Carteira')),
      BottomNavigationBarItem(
        icon: FaIcon(
          FontAwesomeIcons.moneyBill,
          size: SizeConfig.safeBlockHorizontal * 9,
        ),
        title: Text('Pagar'),
      ),
      BottomNavigationBarItem(
          icon: FaIcon(
            FontAwesomeIcons.exchangeAlt,
            size: SizeConfig.safeBlockHorizontal * 9,
          ),
          title: Text('Transferir')),
      BottomNavigationBarItem(
          icon: FaIcon(
            MyFlutterAppIcons.blockchain,
            size: SizeConfig.safeBlockHorizontal * 9,
          ),
          title: Text('Blockchain')),
      BottomNavigationBarItem(
          icon: FaIcon(
            FontAwesomeIcons.cog,
            size: SizeConfig.safeBlockHorizontal * 8,
          ),
          title: Text('Ajustes')),
    ];
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  final List<Widget> introPages = <Widget>[
    Wallet(),
    Payment(),
    Transfer(),
    BlockchainPage(),
    Help(),
  ];
  void getChangedPageAndMoveBar(int page) {
    currentPageValue = page;
    if (page == 4) {
      _visible = false;
    } else {
      _visible = true;
    }
    setState(() {});
  }

  void bottomTapped(int index) {
    int absolute = currentPageValue - index;
    setState(() {
      currentPageValue = index;
      if (absolute.abs() < 2) {
        _controller.animateToPage(index,
            duration: Duration(milliseconds: 400), curve: Curves.ease);
      } else {
        _controller.jumpToPage(index);
      }
    });

  }

  @override
  Widget build(BuildContext context) {
    final _userName =  'User'; // Apenas para demonstração

    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        drawer: Drawer(
          child: Container(color: kHomeBackgroundColor,),
        ),
        appBar: AppBar(
          leading: IconButton(
            icon: FaIcon(
              FontAwesomeIcons.bars,
              color: Colors.white,
              size: 30,
            ),
            onPressed: () {
              _scaffoldKey.currentState.openDrawer();
            },
          ),
          iconTheme: IconThemeData(
            color: Colors.white, //change your color here
            size: 50,
          ),
          backgroundColor: kHomeBackgroundColor,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Image.asset(
                'images/logo_wallet.png',
                width: 40,
                height: 40,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Hello, $_userName',
                style: TextStyle(fontSize: SizeConfig.safeBlockHorizontal * 5.5),
              ),
              Expanded(child: Container(),),
              InkWell(
                  onTap: (){},
                  child: FaIcon(FontAwesomeIcons.bell, size: 30,))
            ],
          ),
          elevation: 0.0,
          bottomOpacity: 0.0,
        ),
        bottomNavigationBar: BottomNavigationBar(
          elevation: 0,
          selectedFontSize: SizeConfig.safeBlockHorizontal * 4,
          unselectedFontSize: SizeConfig.safeBlockHorizontal * 3.8,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: kPrimaryBlue,
          //selectedIconTheme: IconThemeData(color: Colors.green),
          unselectedItemColor: Colors.white,
          backgroundColor: kHomeBackgroundColor,
          currentIndex: currentPageValue,
          onTap: (index) {
            bottomTapped(index);
          },
          items: buildBottomNavBarItems(),
        ),
        body: Stack(
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
            AnimatedContainer(
              duration: Duration(milliseconds: 300),
              curve: Curves.easeInCubic,
              padding: EdgeInsets.only(bottom: 10, left: 10),
              height: currentPageValue == 0?  SizeConfig.blockSizeVertical * 28: SizeConfig.blockSizeVertical * 25 ,
              width: SizeConfig.blockSizeHorizontal * 100,
              color: kHomeBackgroundColor,
              child: currentPageValue  == 4? Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: SizeConfig.blockSizeHorizontal * 25,
                    height: SizeConfig.blockSizeHorizontal * 25,
                    child: CircleAvatar(
                      backgroundColor: kPrimaryBlue,
                      child: FaIcon(FontAwesomeIcons.userNinja, size: SizeConfig.blockSizeHorizontal * 15, color: kHomeBackgroundColor,),
                    ),
                  ),
                  SizedBox(height: 5,),
                  Text(
                    _userName,
                    style: TextStyle(
                        fontSize: SizeConfig.safeBlockHorizontal * 6,
                        color: Colors.white),
                  ),
                ],
              ): Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Saldo total',
                    style: TextStyle(
                        fontSize: SizeConfig.safeBlockHorizontal * 6,
                        color: Colors.white),
                  ),
                  Text(
                    'R\$ 350,00',
                    style: TextStyle(
                        fontSize: SizeConfig.safeBlockHorizontal * 11,
                        color: Colors.white),
                  ),
                ],
              ) ,
            ),
            AnimatedPositioned(
              duration: Duration(milliseconds: 500),
              curve: Curves.elasticInOut,
              top: currentPageValue == 0? SizeConfig.blockSizeVertical * 20.5: SizeConfig.blockSizeVertical * 17.5,
              right: 10,
              child: Container(
                width: 70,
                height: 70,
                child: AnimatedOpacity(
                  opacity: _visible ? 1.0 : 0.0,
                  duration: Duration(milliseconds: 150),
                  child: FloatingActionButton(
                    onPressed: _visible? (){} : null,
                    backgroundColor: kPrimaryBlue,
                    child: FaIcon(FontAwesomeIcons.plus),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}




