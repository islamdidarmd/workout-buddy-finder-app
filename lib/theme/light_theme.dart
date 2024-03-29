import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const _seedColor = Color(0xFF01947E);
final baseTheme =
    ThemeData(colorSchemeSeed: _seedColor, brightness: Brightness.light, useMaterial3: true);
final theme = baseTheme.copyWith(
  textTheme: GoogleFonts.montserratTextTheme(baseTheme.textTheme),
);
