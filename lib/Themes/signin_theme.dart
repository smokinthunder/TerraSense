import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SigninTheme {
  ThemeData signinTheme() {
    return ThemeData(
      textTheme: TextTheme(
        headlineSmall: GoogleFonts.inter(
          fontSize: 40,
        ),
      ),
      scaffoldBackgroundColor: const Color(0xffe0e7e9),
      inputDecorationTheme: const InputDecorationTheme(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(
            const Color(0xff5868e0),
          ),
          textStyle: MaterialStateProperty.all<TextStyle>(
            TextStyle(
              foreground: Paint()..color = Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          shape: MaterialStateProperty.all<OutlinedBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ),
    );
  }
}
