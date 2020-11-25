import 'package:flutter/material.dart';
import 'constent_variable.dart';
import 'Repeate_contanier.dart';
import 'Input_Page.dart';

class Resultfind extends StatelessWidget {
  Resultfind({@required this.bmiresult, this.final_result, this.suggestion});
  final String bmiresult;
  final String final_result;
  final String suggestion;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI RESULT'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                child: Center(
                  child: Text(
                    'YOUR RESULT',
                    style: ConstentTextLabe3,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Repeate_contanier(
                colors: activationcolor,
                cardWidge: Column(
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(final_result, style: Result1),
                    Text(bmiresult, style: Result2),
                    Text(
                      suggestion,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => InputPage()));
                },
                child: Container(
                  child: Center(
                    child: Text('Again Calculate', style: ConstentTextLabe3),
                  ),
                  color: Colors.black,
                  height: 40,
                  width: double.infinity,
                  margin: EdgeInsets.only(top: 30),
                ),
              ),
            ),
          ],
        ));
  }
}
