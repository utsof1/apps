import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../../../constants/sizes.dart';

class TOutlinedButtonTheme {
  TOutlinedButtonTheme._();

  //light theme
  static final lightOutlinedbuttonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: tSecondaryColor,
      side: BorderSide(color: tSecondaryColor),
      padding: EdgeInsets.symmetric(vertical: tButtonHeight),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
    ),
  );

  //dark theme

  static final darkOutlinedbuttonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: tWhiteColor,
      side: BorderSide(color: tWhiteColor),
      padding: EdgeInsets.symmetric(vertical: tButtonHeight),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
    ),
  );
}
