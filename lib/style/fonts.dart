import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle googleFont({required String fontFamily, TextStyle? style}) {
  return GoogleFonts.getFont(fontFamily, textStyle: style);
}
