import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle googleFont({required String fontFamily, required TextStyle style}) {
  return GoogleFonts.getFont(fontFamily, textStyle: style);
}
