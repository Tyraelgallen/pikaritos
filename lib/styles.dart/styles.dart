import 'package:flutter/material.dart';

Color primary = const Color(0xFF904CCF);
Color secondary = const Color.fromARGB(255, 178, 97, 212);

class Styles {
  static Color primaryColor = primary;
  static Color secondaryColor = secondary;

  static var color_transparente =
      MaterialStateProperty.all<Color>(Colors.transparent);

  static var button_style = ButtonStyle(
      shadowColor: Styles.color_transparente,
      backgroundColor: Styles.color_transparente);
}

Widget Texto(String text) {
  return Text(
    text,
    textAlign: TextAlign.center,
    overflow: TextOverflow.ellipsis,
    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
  );
}
