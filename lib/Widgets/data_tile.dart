import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Themes/colors.dart';

class DataTile extends StatelessWidget {
  final String title;
  final String value;
  const DataTile({super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10, right: 10, left: 10),
      height: 83,
      width: 141,
      decoration: BoxDecoration(
        color: Clr.background,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Colors.white,
            offset: Offset(-10, -10),
            blurRadius: 8,
          ),
          BoxShadow(
            color: Color.fromARGB(46, 0, 0, 0),
            offset: Offset(3, 3),
            blurRadius: 10,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: GoogleFonts.inter(fontSize: 12),
          ),
          Text(
            value,
            style: GoogleFonts.inter(fontSize: 24, color: Clr.blueTint),
          ),
        ],
      ),
    );
  }
}

class DateTile extends StatelessWidget {
  final String day;
  final String date;
  const DateTile({super.key, required this.day, required this.date});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10, right: 10, left: 10),
      height: 98,
      width: 75,
      decoration: BoxDecoration(
        color: Clr.background,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Colors.white,
            offset: Offset(-10, -10),
            blurRadius: 8,
          ),
          BoxShadow(
            color: Color.fromARGB(46, 0, 0, 0),
            offset: Offset(3, 3),
            blurRadius: 10,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            day,
            style: GoogleFonts.inter(fontSize: 12),
          ),
          Text(
            date,
            style: GoogleFonts.inter(fontSize: 24, color: Clr.blueTint),
          ),
        ],
      ),
    );
  }
}
