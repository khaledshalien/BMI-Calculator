import 'package:flutter/material.dart';

class FrameBorder extends StatelessWidget {
  FrameBorder({
     this.onPress,
    required this.color,
    required this.childWidget,
  });
  VoidCallback? onPress;
  Color color;
  Widget childWidget;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.all(10),
        child: childWidget,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color,
        ),
      ),
    );
  }
}
