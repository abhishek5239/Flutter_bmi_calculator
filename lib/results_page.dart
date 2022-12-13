import 'package:bmi_calculator/constant.dart';
import 'package:flutter/material.dart';
import 'constant.dart';
import 'reusable_card.dart';

class ResultsPage extends StatelessWidget {
  // const ({Key? key}) : super(key: key);
  ResultsPage(
      {required this.bmi_obs,
      required this.bmi_user,
      required this.bmi_suggestion});
  final String bmi_obs;
  final String bmi_user;
  final String bmi_suggestion;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: 15.0,
          ),
          Expanded(
              child: Text(
            'YOUR RESULT',
            textAlign: TextAlign.center,
            style: kresul_page_font,
          )),
          Expanded(
              flex: 5,
              child: Reusable_card(
                box_color: kactive_card_color,
                carddchild: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      bmi_obs,
                      style: kreult_green_text_style,
                    ),
                    Text(
                      bmi_user,
                      style: kbmi_text_style,
                    ),
                    Text(
                      bmi_suggestion,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 22.0),
                    ),
                  ],
                ),
              )),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              color: kbottom_pink_color,
              child: Center(
                child: Text(
                  'RE-CALCULATE',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                ),
              ),
              margin: EdgeInsets.only(top: 10.0),
              height: kbottocontainerheight,
            ),
          )
        ],
      ),
    );
  }
}
