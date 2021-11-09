import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
   IconData? icon;
   final String lable;

  IconContent({required this.lable,required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80,
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          lable,
          style: const TextStyle(fontSize: 18, color: Color(0xff8d8e98)),
        ),
      ],
    );
  }
}
