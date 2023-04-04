import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Map<int, Color> color = {
  50: const Color.fromRGBO(136, 14, 79, .1),
  100: const Color.fromRGBO(136, 14, 79, .2),
  200: const Color.fromRGBO(136, 14, 79, .3),
  300: const Color.fromRGBO(136, 14, 79, .4),
  400: const Color.fromRGBO(136, 14, 79, .5),
  500: const Color.fromRGBO(136, 14, 79, .6),
  600: const Color.fromRGBO(136, 14, 79, .7),
  700: const Color.fromRGBO(136, 14, 79, .8),
  800: const Color.fromRGBO(136, 14, 79, .9),
  900: const Color.fromRGBO(136, 14, 79, 1),
};
MaterialColor myColor = MaterialColor(0xFFFA0064, color);

const themeLightYellow = Color(0xFFFAD57C);
const themeDarkYellow = Color(0xFFE6B446);
const themePink = Color(0xFFFA0064);
const themeBackground = Color(0xFFF5F5F5);
const themeBorder = Color(0xFFD4D4D4);
const themeOrange = Color(0xFFFF643C);
const themeGray = Colors.grey;

const double kHeading1 = 25;
const double kHeading2 = 6;
const double kHeading3 = 5;
const double kHeading4 = 4;
const double kBody1 = 3;
const double kBody2 = 2.5;
const double listImgWidth = 0.56;
const double listTitleWidth = 0.5;
const double listHeadingWidth = 0.7;

final kJakartaHeading1 = GoogleFonts.plusJakartaSans(
  fontWeight: FontWeight.w800,
  height: 1.2,
);
final kJakartaBodyMedium = GoogleFonts.plusJakartaSans(
  fontWeight: FontWeight.w500,
  height: 1.3,
);

const themeFontGza = 'Gza-RegularItalic';
const themeFontEuropa = 'Europa';

const secContainerTextStyle = TextStyle(
    fontSize: 22,
    color: Colors.white,
    fontFamily: themeFontGza,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.italic,
    height: 1.1);

const footerLinkStyle =
    TextStyle(fontSize: 18, color: Colors.white, fontFamily: themeFontEuropa);

const headingTextStyle = TextStyle(
  fontSize: 36,
  fontWeight: FontWeight.w400,
  fontFamily: themeFontGza,
);

const listTitleStyle = TextStyle(
  fontSize: 24,
  fontWeight: FontWeight.w700,
  fontFamily: themeFontEuropa,
);
const listDescStyle = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.w400,
  fontFamily: themeFontGza,
);

const borderRadius = BorderRadius.only(
    bottomRight: Radius.circular(50), topRight: Radius.circular(50));
