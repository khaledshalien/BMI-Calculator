import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final String bmi;
  final String result;

  Result(
    this.bmi,
    this.result,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Result"),
      ),
      body: Center(
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("BMI : $bmi",style: TextStyle(fontSize: 40,fontWeight: FontWeight.w500),),
            SizedBox(height: 25,),
            Text("Result : $result",style: TextStyle(fontSize: 40,fontWeight: FontWeight.w700),),
          ],
        ),
      ),
    );
  }
}
