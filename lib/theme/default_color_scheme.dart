import 'package:flutter/material.dart';

const textColor = Color(0xFFeaece8);
const backgroundColor = Color(0xFF070804);
const primaryColor = Color(0xFFD4E4C1);
const primaryFgColor = Color(0xFF070804);
const secondaryColor = Color(0xFF5c9615);
const secondaryFgColor = Color(0xFF070804);
const accentColor = Color(0xFF8cfc04);
const accentFgColor = Color(0xFF070804);
const semiPrimaryContainerColor = Color.fromARGB(199, 198, 235, 161);
const primaryContainerColor = Color.fromARGB(255, 198, 235, 161);
const primaryDisabled = Color.fromARGB(255, 125, 152, 93);
const container = Color.fromRGBO(255, 255, 255, 0.2);

const mainColorScheme = ColorScheme(
    brightness: Brightness.dark,
    // background: backgroundColor,
    // onBackground: textColor,
    primary: primaryColor,
    onPrimary: primaryFgColor,
    secondary: secondaryColor,
    onSecondary: secondaryFgColor,
    tertiary: accentColor,
    onTertiary: accentFgColor,
    surface: backgroundColor,
    onSurface: textColor,
    error: Brightness.dark == Brightness.light
        ? Color(0xffB3261E)
        : Color(0xffF2B8B5),
    onError: Brightness.dark == Brightness.light
        ? Color(0xffFFFFFF)
        : Color(0xff601410),
    primaryContainer: primaryContainerColor);
