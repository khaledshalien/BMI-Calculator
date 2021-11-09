import 'package:bmicalculator/input_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: const Color(0xff0A0E21),
        scaffoldBackgroundColor: const Color(0xff0A0E21),
      ),
      home: InputPage(),
    );
  }
}
