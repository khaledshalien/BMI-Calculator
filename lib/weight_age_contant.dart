
import 'package:bmicalculator/input_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Weightcontant extends StatelessWidget {

String lable;
String number;
Widget childwedgit;


Weightcontant(this.lable,this.number,this.childwedgit);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(lable,style: TextStyle(fontWeight: FontWeight.w900,fontSize: 18,
        color: Color(0xff8d8e98))),
        Text(number,style: TextStyle(fontSize: 50,fontWeight: FontWeight.w900)),
      ],
    );
  }
}


