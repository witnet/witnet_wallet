import 'package:flutter/material.dart';
import 'colors.dart';

Brightness brightness = Brightness.light;
MaterialColor primarySwatch = createMaterialColor(WitnetPallet.witnetGreen2);
Color primaryColor = WitnetPallet.witnetGreen2;
TextSelectionThemeData textSelectionTheme =
    TextSelectionThemeData(cursorColor: WitnetPallet.witnetGreen2);
Brightness primaryColorBrightness = brightness;
TextTheme textTheme = TextTheme(
  headline1: TextStyle(
      fontFamily: 'Quicksand',
      color: WitnetPallet.darkGrey,
      fontSize: 24,
      fontWeight: FontWeight.bold),
  headline2: TextStyle(
      fontFamily: 'Quicksand',
      color: WitnetPallet.darkGrey,
      fontSize: 24,
      fontWeight: FontWeight.normal),
  subtitle1: TextStyle(
      fontFamily: 'NotoSans',
      color: WitnetPallet.darkGrey,
      fontSize: 16,
      fontWeight: FontWeight.normal),
  bodyText1: TextStyle(
      fontFamily: 'NotoSans',
      color: WitnetPallet.darkGrey,
      fontSize: 16,
      fontWeight: FontWeight.normal),
  bodyText2: TextStyle(
      fontFamily: 'NotoSans',
      color: WitnetPallet.darkGrey,
      fontSize: 14,
      fontWeight: FontWeight.normal),
  caption: TextStyle(
      fontFamily: 'NotoSans',
      color: WitnetPallet.darkGrey,
      fontSize: 12,
      fontWeight: FontWeight.normal),
  button: TextStyle(
      fontFamily: 'NotoSans',
      color: WitnetPallet.white,
      fontSize: 16,
      fontWeight: FontWeight.normal),
);
InputDecorationTheme inputDecorationTheme = InputDecorationTheme(
  fillColor: WitnetPallet.white,
  filled: true,
  errorStyle: TextStyle(backgroundColor: WitnetPallet.darkRed),
  helperStyle: TextStyle(backgroundColor: WitnetPallet.darkGrey),
  helperMaxLines: 1,
  errorMaxLines: 1,
  hintStyle: TextStyle(),
  hoverColor: WitnetPallet.white,
  focusColor: WitnetPallet.witnetGreen2,
  isDense: false,
  isCollapsed: false,
  contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(
        color: WitnetPallet.lightGrey, width: 1.0, style: BorderStyle.solid),
    borderRadius: BorderRadius.circular(4),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(
        color: WitnetPallet.witnetGreen2, width: 1.0, style: BorderStyle.solid),
    borderRadius: BorderRadius.circular(4),
  ),
  focusedErrorBorder: OutlineInputBorder(
    borderSide: BorderSide(
        color: WitnetPallet.darkRed, width: 1.0, style: BorderStyle.solid),
    borderRadius: BorderRadius.circular(4),
  ),
  border: OutlineInputBorder(
    borderSide: BorderSide(
        color: WitnetPallet.white, width: 1.0, style: BorderStyle.solid),
    borderRadius: BorderRadius.circular(4),
  ),
  alignLabelWithHint: true,
);
CardTheme cardTheme = CardTheme(
  elevation: 5.0,
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7.0)),
  color: WitnetPallet.darkBlue2,
  // shadowColor: Color(0xFF112338),
);
ElevatedButtonThemeData elevatedButtonTheme = ElevatedButtonThemeData(
  style: ElevatedButton.styleFrom(
      padding: const EdgeInsets.all(16),
      onSurface: Color.fromARGB(114, 2, 29, 48),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      primary: WitnetPallet.darkBlue2, // background color
      textStyle: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.normal,
        color: WitnetPallet.white,
      )),
);
OutlinedButtonThemeData outlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
  primary: WitnetPallet.darkBlue2,
  onSurface: Color.fromARGB(114, 2, 29, 48),
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
  side: BorderSide(width: 2, color: WitnetPallet.darkBlue2),
  padding: const EdgeInsets.all(16),
  textStyle: const TextStyle(
    fontSize: 16,
    color: WitnetPallet.darkBlue2,
  ),
));
IconThemeData iconTheme = IconThemeData(
  color: WitnetPallet.lightGrey,
  size: 16,
);
IconThemeData primaryIconTheme = IconThemeData(
  color: WitnetPallet.witnetGreen2,
  size: 24,
);
ThemeData lightTheme = ThemeData(
  primaryColor: primaryColor,
  splashColor: Colors.transparent,
  iconTheme: iconTheme,
  primaryIconTheme: primaryIconTheme,
  textSelectionTheme: textSelectionTheme,
  backgroundColor: WitnetPallet.white,
  elevatedButtonTheme: elevatedButtonTheme,
  outlinedButtonTheme: outlinedButtonTheme,
  cardTheme: cardTheme,
  textTheme: textTheme,
  inputDecorationTheme: inputDecorationTheme,
);
