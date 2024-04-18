import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Themes/colors.dart';

class BottomNavigation extends StatelessWidget {
  final int selectedIndex;
  const BottomNavigation(this.selectedIndex, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          for (var i = 0; i < 4; i++) BottomNavigationButton(i, selectedIndex),
        ],
      ),
    );
  }
}

class BottomNavigationButton extends StatelessWidget {
  final int index;
  final int selectedIndex;
  const BottomNavigationButton(this.index, this.selectedIndex, {super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> bottomNavigationData = [
      {
        'title': 'Home',
        'icon': 'assets/bottomn_navigation/home.png',
        'route': '/home'
      },
      {
        'title': 'Controls',
        'icon': 'assets/bottomn_navigation/controls.png',
        'route': '/controls'
      },
      {
        'title': 'Settings',
        'icon': 'assets/bottomn_navigation/settings.png',
        'route': '/settings'
      },
      {
        'title': 'Profile',
        'icon': 'assets/bottomn_navigation/profile.png',
        'route': '/profile'
      },
    ];
    return InkWell(
      onTap: () {
        index == 3
            ? Navigator.pushNamed(context, bottomNavigationData[index]['route'])
            : Navigator.pushReplacementNamed(
                context, bottomNavigationData[index]['route']);
      },
      child: Container(
        height: 70,
        width: 70,
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
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            index == 1
                ? Container()
                : const SizedBox(
                    height: 5,
                  ),
            Image.asset(
              bottomNavigationData[index]['icon'],
              color:
                  selectedIndex == index ? Clr.blueTint : Clr.nBottomNavigation,
              height: index == 1 ? 38 : 25,
            ),
            Text(
              bottomNavigationData[index]['title'],
              style: GoogleFonts.inter(
                fontSize: 12,
                color: selectedIndex == index
                    ? Clr.blueTint
                    : Clr.nBottomNavigation,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
