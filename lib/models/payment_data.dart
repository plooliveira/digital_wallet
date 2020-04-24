import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:digital_wallet/models/payment_tile_model.dart';
import 'package:digital_wallet/screens/widgets/payment_tile.dart';
import 'package:digital_wallet/shared/styles.dart';
import 'package:flutter/material.dart';

class PaymentData {
  List<PaymentTileModel> _payments = [
    PaymentTileModel(title: 'Conta água', date: '02/04/20', amount: 49.70, icon: FaIcon(FontAwesomeIcons.fileInvoiceDollar, color: kPrimaryGreen, size: 25,)),
    PaymentTileModel(title: 'Academia', date: '02/04/20', amount: 60.00, icon: FaIcon(FontAwesomeIcons.dumbbell, color: Colors.redAccent, size: 20,),),
    PaymentTileModel(title: 'Gasolina', date: '02/04/20', amount: 85.20, icon: FaIcon(FontAwesomeIcons.gasPump, color: Colors.orangeAccent, size: 25,),),
    PaymentTileModel(title: 'Conta energia', date: '02/04/20', amount: 85.20, icon: FaIcon(FontAwesomeIcons.fileInvoiceDollar, color: kPrimaryGreen, size: 25,),),
    PaymentTileModel(title: 'Conta energia', date: '02/04/20', amount: 85.20, icon: FaIcon(FontAwesomeIcons.fileInvoiceDollar, color: kPrimaryGreen, size: 25,),),
  ];

  String getTitle (int index){
    return _payments[index].title;
  }
  String getDate (int index){
    return _payments[index].date;
  }
  double getAmount (int index){
    return _payments[index].amount;
  }
  FaIcon getIcon (int index){
    return _payments[index].icon;
  }
  int get paymentsCounter => _payments.length;
}