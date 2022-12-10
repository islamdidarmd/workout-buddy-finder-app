import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const _seedColor = Color(0xFFFE5D8D);
final baseTheme =
    ThemeData(colorSchemeSeed: _seedColor, brightness: Brightness.dark, useMaterial3: true);
final darkTheme = baseTheme.copyWith(
  textTheme: GoogleFonts.montserratTextTheme(baseTheme.textTheme),
);
