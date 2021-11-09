import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  IconData icon;
  VoidCallback onPress;
  RoundIconButton({required this.icon,required this.onPress});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      constraints: BoxConstraints.tightFor(width: 35,height: 35),
      shape: CircleBorder(),
      fillColor: Color(0xff4c4f5e),
      child: Icon(icon),
      onPressed: onPress,
    );
  }
}