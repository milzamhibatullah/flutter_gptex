import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppFonts {
  Widget text(String? text,
          {size = 16.0,
          color = Colors.black,
          bool italic = false,
          double height = 1.5,
          TextOverflow overflow = TextOverflow.visible,
          TextDecoration textDecoration = TextDecoration.none,
          int? maxLine = 2,
          FontWeight weight = FontWeight.bold}) =>
      Text(
        text!,
        overflow: overflow,
        maxLines: maxLine,
        style: GoogleFonts.montserrat(
            fontSize: size,
            height: height,
            color: color,
            decoration: textDecoration,
            fontStyle: italic ? FontStyle.italic : FontStyle.normal,
            fontWeight: weight),
      );

  TextStyle style({
    size = 16.0,
    color = Colors.black,
    bool italic = false,
    double height = 1.5,
    TextDecoration textDecoration = TextDecoration.none,
    FontWeight weight = FontWeight.bold,
  }) =>
      GoogleFonts.montserrat(
          fontSize: size,
          height: height,
          color: color,
          decoration: textDecoration,
          fontStyle: italic ? FontStyle.italic : FontStyle.normal,
          fontWeight: weight);
}

final appFonts = AppFonts();
