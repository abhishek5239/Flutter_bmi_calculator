import 'package:flutter/material.dart';
//EXTRACTED WIDGET 1

//AS THE CONTAINER WIDGET WAS REPEATING SO WE HAVE CREATED A SEPARATE CLASS FOR IT
//WE JUST HAVE TO GO TO THE FLUTTER OUTLINER AND THEN RIGHT CLICK ON THE CONTAINER AND
//EXTRACT THE WIDGET AND REUSE IT ANY WHERE BY JUST WRITING THE CLASS NAME

//HERE WE HAVE CREATED OUR OWN CUSTOM WIDGET
class Reusable_card extends StatelessWidget {
  //NOW AS WE NO THAT THE COLOR OF OUR CONTAINER WILL CHANGE SO WILL TAKE THE COLOR
  //INPUT FROM THE USER

  //HERE WE HAVE JUST CREATED A CONSTRUCTOR TO INITIALIZE THE VALUE
  Reusable_card({required this.box_color, this.carddchild});

  //WE WRITE THIS FINAL TO MAKE IT IMMUTABLE
  final Color box_color;
  final Widget? carddchild;

  //NOW WE HAVE TO PASS A FUNCTION AS PARAMETER WHICH IS THE SETSTATE()
  // final GestureTapCallback onpress;

  //SO HERE BOX COLOR WILL CONTAINE --> COLOR(HEXCODE_OF_THE_COLOR)

  @override
  Widget build(BuildContext context) {
    return Container(
      child: carddchild,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: box_color, borderRadius: BorderRadius.circular(15)),
    );
  }
}
