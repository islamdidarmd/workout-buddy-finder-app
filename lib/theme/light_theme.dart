import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const _seedColor = Color(0xFFFE5D8D);
final baseTheme =
    ThemeData(colorSchemeSeed: _seedColor, brightness: Brightness.light);
final theme = baseTheme.copyWith(
  textTheme: GoogleFonts.montserratTextTheme(baseTheme.textTheme),
);
