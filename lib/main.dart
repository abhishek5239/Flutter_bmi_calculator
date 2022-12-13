import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //NOW THIS IS PRE MADE THEME, WHAT IF YOU WANT TO CREATE YOUR OWN THEME
      // theme: ThemeData.dark(),

      //YOU OWN THEME
      //primaryswatch changes the appbar and the bottom navigation bar color too
      //accentcolor helps to change the floating action button
      //WITH THE HELP OF COLOR SWATCH WE HAVE CHANGE THE FLOATING POINT BUTTON
      // theme: ThemeData(
      //     //HERE INSTED OF PRIMARY COLOR WE WILL USE APPBAR THEME
      //     appBarTheme: AppBarTheme(backgroundColor: Color(0xFF0A0E21)),
      //     primarySwatch: Colors.purple,
      //     //THIS WIDGET IS USED TO CHANGE THE BACKGROUND COLOR OF THE BODY
      //     scaffoldBackgroundColor: Color(0xFF0A0E21),
      //     //NOW AS WE HAVE TO MAKE THE TEXT WHICH IS IN THE CENTER OF THE SCREEN VISIBLE
      //     //SO WE WILL USE TEXTTHEME AS THERE ARE MANY TEXT SO IT WILL HELP US TO CHOOSE THE
      //     //SPECIFIC TEXT
      //     textTheme: TextTheme(bodyText2: TextStyle(color: Colors.white))

      //    NOW ALL THIS WHICH WE HAVE DONE HERE CAN BE INCLUDED INTO THE DARK THEME AS WELL
      //  JUST BY USING .copyWith and then enter everything which you have written there
      theme: ThemeData.dark().copyWith(
          //WE ONLY NEED THIS MUCH
          appBarTheme: AppBarTheme(backgroundColor: Color(0xFF0A0E21)),
          scaffoldBackgroundColor: Color(0xFF0A0E21)),
      home: InputPage(),
    );
  }
}
