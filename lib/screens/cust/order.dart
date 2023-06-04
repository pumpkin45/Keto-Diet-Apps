import 'package:flutter/src/widgets/framework.dart';
import 'cust_orderdetail.dart';
import 'cust_orderform.dart';


// import 'package:dino_printing/screens/orderform_screen.dart';
// import 'package:dino_printing/screens/orderdetail_screen.dart';

class PaymentDetails {
  dynamic bank;
  dynamic accno;
  dynamic price;
 


  PaymentDetails(
      {required this.bank,
      required this.accno,
      required this.price});
}