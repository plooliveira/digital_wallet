import 'package:brasil_fields/brasil_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:digital_wallet/assets/my_flutter_app_icons.dart';
import 'package:digital_wallet/screens/widgets/default_textfield.dart';
import 'dart:math' as math;
import 'package:digital_wallet/shared/styles.dart';

import 'package:digital_wallet/models/user.dart';

import '../../../size_config.dart';

class Transfer extends StatefulWidget {
  @override
  _TransferState createState() => _TransferState();
}

class _TransferState extends State<Transfer> {
  static List<User> _contatos = [
    User(name: 'Paul', phone: '202-555-0139'),
    User(name: 'James', phone: '222-555-2034'),
  ];
  int _contactSelected = 0;
  final _formKey = GlobalKey<FormState>();

  List<Widget> getFormWidget() {
    List<Widget> formWidget = List();

    formWidget.add(Column(
      children: <Widget>[
        ListTile(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    _contatos[0].name,
                    style: kMediumText,
                  ),
                  Text(
                    _contatos[0].phone,
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: SizeConfig.safeBlockHorizontal * 4),
                  ),
                ],
              ),
              Radio(
                value: _contatos[0].name,
                groupValue: _contatos[_contactSelected].name,
                onChanged: (value) {
                  setState(() {
                    _contactSelected = 0;
                  });
                },
              ),
            ],
          ),
        ),
        ListTile(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    _contatos[1].name,
                    style: kMediumText,
                  ),
                  Text(
                    _contatos[1].phone,
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: SizeConfig.safeBlockHorizontal * 4),
                  ),
                ],
              ),
              Radio(
                value: _contatos[1].name,
                groupValue: _contatos[_contactSelected].name,
                onChanged: (value) {
                  setState(() {
                    _contactSelected = 1;
                  });
                },
              ),
            ],
          ),
        ),
      ],
    ));
    return formWidget;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(

          //height: SizeConfig.blockSizeVertical * 70,
          padding: EdgeInsets.only(
              left: SizeConfig.safeBlockHorizontal * 5,
              right: SizeConfig.safeBlockHorizontal * 5,
              top: SizeConfig.blockSizeVertical * 28,
              bottom: SizeConfig.blockSizeVertical * 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              DefaultTextField(
                onChanged: (value){},
                hintText: '  Digite o valor',
                labelText: 'Valor',
                style: TextStyle(fontSize: SizeConfig.safeBlockHorizontal * 5),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                prefixText: 'R\$ ',
                keyboardType: TextInputType.number,
                inputFormatters: [
                  WhitelistingTextInputFormatter.digitsOnly,
                  RealInputFormatter(centavos: true),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.blockSizeHorizontal * 4),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    InkWell(
                      onTap: () {},
                      child: Column(
                        children: <Widget>[
                          Container(
                            width: SizeConfig.blockSizeHorizontal * 18,
                            height: SizeConfig.blockSizeHorizontal * 18,
                            child: CircleAvatar(
                              backgroundColor: kHomeBackgroundColor,
                              child: Icon(
                                MyFlutterAppIcons.export_icon,
                                size: SizeConfig.safeBlockHorizontal * 8,
                              ),
                            ),
                          ),
                          Text(
                            'Enviar',
                            style: kMediumText,
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Column(
                        children: <Widget>[
                          Container(
                            width: SizeConfig.blockSizeHorizontal * 18,
                            height: SizeConfig.blockSizeHorizontal * 18,
                            child: CircleAvatar(
                              backgroundColor: kHomeBackgroundColor,
                              child: Transform.rotate(
                                angle: 180 * math.pi / 180,
                                child: Icon(
                                  MyFlutterAppIcons.export_icon,
                                  size: SizeConfig.safeBlockHorizontal * 8,
                                ),
                              ),
                              //FaIcon(FaIcon),
                            ),
                          ),
                          Text(
                            'Receber',
                            style: kMediumText,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Contato Selecionado:',
                style: kLargeText.copyWith(fontWeight: FontWeight.bold),
              ),
              ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          _contatos[_contactSelected].name,
                          style: kMediumText,
                        ),
                        Text(
                          _contatos[_contactSelected].phone,
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: SizeConfig.safeBlockHorizontal * 4),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Contatos frequentes',
                style: kLargeText.copyWith(fontWeight: FontWeight.bold),
              ),
              Container(
                height: 150,
                child: Form(
                    key: _formKey,
                    child: ListView(
                      shrinkWrap: true,
                      children: getFormWidget(),
                    )),
              ),
              Container(
                width: double.infinity,
                height: 50,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  color: kHomeBackgroundColor,
                  onPressed: () {},
                  child: Text(
                    'Confirmar',
                    style: kButtonText,
                  ),
                ),
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                        child: Divider(
                      height: 60,
                      thickness: 3,
                      endIndent: 10,
                    )),
                    Text(
                      "Ou",
                      style: kMediumText,
                    ),
                    Expanded(
                        child: Divider(
                      height: 60,
                      thickness: 3,
                      indent: 10,
                    )),
                  ]),
              Container(
                width: double.infinity,
                height: 50,
                child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    onPressed: () {},
                    child: Row(
                      children: <Widget>[
                        FaIcon(FontAwesomeIcons.phoneAlt),
                        SizedBox(
                          width: 25,
                        ),
                        Text(
                          'Adcionar/Procurar Contatos',
                          style:
                              kButtonText.copyWith(color: kHomeBackgroundColor),
                        ),
                      ],
                    )),
              ),
            ],
          )),
    );
  }
}
