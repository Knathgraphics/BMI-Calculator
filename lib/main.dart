import 'package:bmi/onboarding.dart';
import 'package:flutter/material.dart';



void main() => runApp(MaterialApp(
      theme: ThemeData.dark().copyWith(
        textTheme: TextTheme(
          bodyLarge: TextStyle(fontFamily: 'Montserrat'),
          bodyMedium: TextStyle(fontFamily: 'Montserrat'),
          bodySmall: TextStyle(fontFamily: 'Montserrat'),
          displayLarge: TextStyle(fontFamily: 'Montserrat'),
          displayMedium: TextStyle(fontFamily: 'Montserrat'),
          displaySmall: TextStyle(fontFamily: 'Montserrat'),
        ),
        scaffoldBackgroundColor: Color(0XFF0A0E21),
        appBarTheme: AppBarTheme(
          color: Color(0XFF0A0E21),
          iconTheme: IconThemeData(

          ),
          titleTextStyle: TextStyle(fontFamily: 'Montserrat'),
        ),
      ),
      home:Onboarding(),
      debugShowCheckedModeBanner: false,
    ));

