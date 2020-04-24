import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PaymentTileModel  {
  final String title;
  final String date;
  final double amount;
  final FaIcon icon;

  PaymentTileModel({this.title, this.date, this.icon, this.amount});
}
