import 'dart:ui';

import 'package:flutter/src/painting/text_style.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTextStyle {
  // ignore: non_constant_identifier_names
  static TextStyle Bold =
      GoogleFonts.poppins().copyWith(fontSize: 15, fontWeight: FontWeight.bold);

  static TextStyle normal = GoogleFonts.poppins()
      .copyWith(fontSize: 14, fontWeight: FontWeight.normal);

  static TextStyle subtitle = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );
  // static TextStyle body = TextStyle(
  //   fontSize: 14,
  // );
  // static TextStyle bodyBold = TextStyle(
  //   fontSize: 14,
  //   fontWeight: FontWeight.bold,
  // );
  // static TextStyle bodyItalic = TextStyle(
  //   fontSize: 14,
  //   fontStyle: FontStyle.italic,
  // );
  // static TextStyle bodyBoldItalic = TextStyle(
  //   fontSize: 14,
  //   fontWeight: FontWeight.bold,
  //   fontStyle: FontStyle.italic,
  // );
  // static TextStyle bodySmall = TextStyle(
  //   fontSize: 12,
  // );
  // static TextStyle bodySmallBold = TextStyle(
  //   fontSize: 12,
  //   fontWeight: FontWeight.bold,
  // );
  // static TextStyle bodySmallItalic = TextStyle(
  //   fontSize: 12,
  //   fontStyle: FontStyle.italic,
  // );
  // static TextStyle bodySmallBoldItalic = TextStyle(
  //   fontSize: 12,
  //   fontWeight: FontWeight.bold,
  //   fontStyle: FontStyle.italic,
  // );
}
