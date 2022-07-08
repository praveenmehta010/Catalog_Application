import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.deepPurple,
      cardColor: creamColor,
      canvasColor: Colors.white,
      fontFamily: GoogleFonts.rye().fontFamily,
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.white,
        elevation: 0.0,
        // toolbarTextStyle: TextStyle(color: Colorsblack),
        iconTheme: IconThemeData(color: Colors.black),
      ));

  static ThemeData dartTheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.deepPurple,
      cardColor: Colors.black,
      canvasColor: grayColor,
      fontFamily: GoogleFonts.rye().fontFamily,
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.white,
        elevation: 0.0,
        // toolbarTextStyle: TextStyle(color: Colorsblack),
        iconTheme: IconThemeData(color: Colors.black),
        // titleTextStyle: ,
      ));

  static Color creamColor = Color.fromARGB(255, 247, 240, 193);
  static Color grayColor = Vx.gray900;
  static Color drakBluies = Color.fromARGB(255, 48, 20, 63);
  static Color indigoColor = Vx.indigo400;
}
