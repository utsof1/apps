import 'package:apps/src/constants/colors.dart';
import 'package:apps/src/constants/sizes.dart';
import 'package:flutter/material.dart';

class TElevatedButtonTheme {
  TElevatedButtonTheme._();

  //light theme
  static final lightElevatedbuttonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: tWhiteColor,
      backgroundColor: tSecondaryColor,
      side: const BorderSide(color: tSecondaryColor),
      padding: const EdgeInsets.symmetric(vertical: tButtonHeight),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
    ),
  );

  //dark theme

  static final darkElevatedbuttonTheme = ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
    elevation: 0,
    foregroundColor: tSecondaryColor,
    backgroundColor: tWhiteColor,
    side: const BorderSide(color: tSecondaryColor),
    padding: const EdgeInsets.symmetric(vertical: tButtonHeight),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
  ));
}
