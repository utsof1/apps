import 'package:apps/src/utils/theme/widget_themes/elevated_button_theme.dart';
import 'package:apps/src/utils/theme/widget_themes/otlined_button_theme.dart';
import 'package:apps/src/utils/theme/widget_themes/text_field_theme.dart';
import 'package:apps/src/utils/theme/widget_themes/text_theme.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:google_fonts/google_fonts.dart';

class TAppTheme {
  TAppTheme._();

  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    textTheme: TTexttheme.lightTextTheme,
    elevatedButtonTheme: TElevatedButtonTheme.lightElevatedbuttonTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedbuttonTheme,
    inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme,
  );
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    textTheme: TTexttheme.darkTextTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.darkOutlinedbuttonTheme,
    elevatedButtonTheme: TElevatedButtonTheme.darkElevatedbuttonTheme,
    inputDecorationTheme: TTextFormFieldTheme.darkInputDecorationTheme,
  );
}
