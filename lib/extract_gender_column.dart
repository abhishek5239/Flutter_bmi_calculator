import 'package:flutter/material.dart';

//DECLARING CONSTANT
import 'constant.dart';

//EXTRACTED WIDGET 2
class extract_gender_column extends StatelessWidget {
  extract_gender_column(this.icon_gender, this.label);

  //TO EXTRACT A ICON DATA TYPE IS ICONDATA AND U CAN CHECK IT JUST BY HOWERING ON IT

  final IconData icon_gender;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon_gender,
          size: 80,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          label,
          style: klabel_text_style,
        )
      ],
    );
  }
}
