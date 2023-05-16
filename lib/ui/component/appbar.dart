import 'package:flutter/material.dart';
import 'package:flutter_gptex/themes/app.fonts.dart';

AppBar globalAppBar({backgroundColor = Colors.white, double elevation = 0}) => AppBar(
      backgroundColor: backgroundColor,
      elevation: elevation,
      title: appFonts.text('GPT Chat Example'),
    );
