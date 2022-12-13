import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'extract_gender_column.dart';
import 'reusable_card.dart';
import 'results_page.dart';
import 'calculator_brain.dart';
//USING CONSTANTS HERE

import 'constant.dart';

//CREATING ENUM FOR THE GENDER
enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int height = 180;
  int weight = 60;
  int age = 19;
  Gender? selected_gender;

  // Color female_card_color = inactive_card_color;
  // Color male_card_color = inactive_card_color;

  // void male_or_female(Gender selected_gender) {
  //   if (selected_gender == Gender.male) {
  //     if (male_card_color == inactive_card_color &&
  //         female_card_color == inactive_card_color) {
  //       male_card_color = active_card_color;
  //     } else if (male_card_color == inactive_card_color &&
  //         female_card_color == active_card_color) {
  //       male_card_color = active_card_color;
  //       female_card_color = inactive_card_color;
  //     }
  //   } else if (selected_gender == Gender.female) {
  //     if (male_card_color == inactive_card_color &&
  //         female_card_color == inactive_card_color) {
  //       female_card_color = active_card_color;
  //     } else if (male_card_color == active_card_color &&
  //         female_card_color == inactive_card_color) {
  //       male_card_color = inactive_card_color;
  //       female_card_color = active_card_color;
  //     }
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'BMI CALCULATOR',
              textAlign: TextAlign.center,
            ),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                child: Row(
              children: [
                Expanded(
                  //CUSTOM WIDGET 1 IS THE REUSABLE_CARD

                  //GESTUREDECTUROR IS LIKE A BUTTON WHO WILL DETECT THE GESTURE WHEN YOU
                  //WILL PRESS THE MALE OR THE EXPANDED WIDGET GENTLY
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selected_gender = Gender.male;
                      });
                    },
                    child: Reusable_card(
                        box_color: selected_gender == Gender.male
                            ? kactive_card_color
                            : kinactive_card_color,
                        //NOW WE WILL AGAIN MAKE ONE CUSTOM WIDGET for column
                        carddchild: extract_gender_column(
                            FontAwesomeIcons.mars, 'MALE')),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selected_gender = Gender.female;
                      });
                    },
                    child: Reusable_card(
                        box_color: selected_gender == Gender.female
                            ? kactive_card_color
                            : kinactive_card_color,
                        carddchild: extract_gender_column(
                            FontAwesomeIcons.venus, 'FEMALE')),
                  ),
                )
              ],
            )),
            Expanded(
              child: Reusable_card(
                  box_color: kactive_card_color,
                  carddchild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'HEIGHT',
                        style: klabel_text_style,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,

                        //THIS IS USED TO BRING 180 AND CM TO SAME BASELINE
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            height.toString(),
                            style: kboldlabel_text_style,
                          ),
                          Text(
                            'cm',
                            style: klabel_text_style,
                          )
                        ],
                      ),

                      //WE USE THE SLIDERTHEME IF YOU WANT TO EDIT ANY OF THE THINGS IN THE
                      //SLIDER FUNCTION
                      //THIS SLIDERTHEME WE CAN USE AS A WIDGET AND THE CHILD WOULD BE
                      //OUR SLIDER
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                            //NOW HERE WE HAVE TO CHANGE THE THUMB SHAPE AND
                            //THE OVERLAY SHAPE SO WE HAVE TAKEN HERE SLIDERTHEME
                            //AND INSIDE IT WE HAVE TAKEN THE DATA
                            inactiveTrackColor: Color(0xFF8D8E98),
                            activeTrackColor: Colors.white,
                            overlayColor: Color(0x29EB1555),
                            thumbColor: Color(0xFFEB1555),
                            thumbShape:
                                RoundSliderThumbShape(enabledThumbRadius: 15.0),
                            overlayShape:
                                RoundSliderOverlayShape(overlayRadius: 30.0)),
                        child: Slider(
                            value: height.toDouble(),
                            min: 120.0,
                            max: 220.0,

                            //INSTED OF THIS COLOR WE HAVE SPECIFIED THE COLOR OF TRAC UP
                            // activeColor: Color(0xFFEB1555),

                            onChanged: (double newvalue) {
                              setState(() {
                                height = newvalue.round();
                              });
                            }),
                      )
                    ],
                  )),
            ),
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: Reusable_card(
                    box_color: kactive_card_color,
                    carddchild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'WEIGHT',
                          style: klabel_text_style,
                        ),
                        Text(
                          weight.toString(),
                          style: kboldlabel_text_style,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            customize_round_icon_button(
                              get_icon: FontAwesomeIcons.minus,
                              on_press_button: () {
                                setState(() {
                                  weight = weight - 1;
                                });
                              },
                            ),
                            customize_round_icon_button(
                              get_icon: FontAwesomeIcons.plus,
                              on_press_button: () {
                                setState(() {
                                  weight = weight + 1;
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Reusable_card(
                    box_color: kactive_card_color,
                    carddchild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('AGE', style: klabel_text_style),
                        Text(
                          age.toString(),
                          style: kboldlabel_text_style,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            customize_round_icon_button(
                                get_icon: FontAwesomeIcons.minus,
                                on_press_button: () {
                                  setState(() {
                                    age = age - 1;
                                  });
                                }),
                            customize_round_icon_button(
                                get_icon: FontAwesomeIcons.plus,
                                on_press_button: () {
                                  setState(() {
                                    age = age + 1;
                                  });
                                })
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            )),
            GestureDetector(
              onTap: () {
                Calculator_brain calc =
                    Calculator_brain(height: height, weight: weight);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ResultsPage(
                            bmi_obs: calc.get_result(),
                            bmi_user: calc.BMIcalculator(),
                            bmi_suggestion: calc.get_interpretation())));
              },
              child: Container(
                color: kbottom_pink_color,
                child: Center(
                  child: Text(
                    'CALCULATE',
                    // style: kboldlabel_text_style,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                    // textAlign: TextAlign.center,
                  ),
                ),
                margin: EdgeInsets.only(top: 10.0),
                //this is used to maximix the width
                width: double.infinity,
                height: kbottocontainerheight,
              ),
            )
          ],
        ));
  }
}

//HERE WE WILL BE CUSTOMIZE OUR OWN BUTTON AND FOR THAT WE HAVE CREATED
//AN STATELESS WIDGET AND IN THAT WE ARE GOING TO RETURN RawMaterialButton
class customize_round_icon_button extends StatelessWidget {
  // const customize_round_icon_button({Key? key}) : super(key: key);

  customize_round_icon_button(
      {@required this.get_icon, @required this.on_press_button});

  final IconData? get_icon;
  final VoidCallback? on_press_button;
  //
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(get_icon),
      //IT IS ONLY GIVEN FOR THE SHADOW
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
      //in the place of the circleborder we can make any shape like square or rectangle
      //any shape of our choice
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      onPressed: on_press_button,
    );
  }
}
