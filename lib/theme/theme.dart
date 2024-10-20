import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prairie/theme/default_color_scheme.dart';

export 'default_color_scheme.dart';

final appTheme = ThemeData(
    brightness: Brightness.dark,
    colorScheme: mainColorScheme,
    textTheme: _textTheme);

final _textTheme = TextTheme(
  headlineLarge: TextStyle(
      fontSize: 64.0,
      fontFamily: GoogleFonts.inter().fontFamily,
      fontWeight: FontWeight.w800),
  headlineMedium: TextStyle(
      fontSize: 32.0,
      fontFamily: GoogleFonts.inter().fontFamily,
      fontWeight: FontWeight.w700),
  headlineSmall: TextStyle(
      fontSize: 24.0,
      fontFamily: GoogleFonts.inter().fontFamily,
      fontWeight: FontWeight.w600),
  displayMedium: TextStyle(
    fontSize: 20.0,
    fontFamily: GoogleFonts.inter().fontFamily,
  ),
  labelSmall: TextStyle(
      fontSize: 10.0,
      fontFamily: GoogleFonts.jetBrainsMono().fontFamily,
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.italic),
  displayLarge: TextStyle(
      fontSize: 32.0,
      fontFamily: GoogleFonts.inter().fontFamily,
      fontWeight: FontWeight.w600),
);
