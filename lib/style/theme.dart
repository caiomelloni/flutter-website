import 'package:deposito_nelinho/constants.dart';
import 'package:flutter/material.dart';

ThemeData appTheme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    primaryColor: kPrimaryRed,
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: ButtonStyle(
        side: MaterialStateBorderSide.resolveWith(
          (Set<MaterialState> states) => const BorderSide(color: kHighlightBlackText, width: 2)
        ),
      ),
    ),
  );
}
