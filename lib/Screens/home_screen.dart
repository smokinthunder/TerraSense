import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../API/values_api.dart';
import '../Themes/colors.dart';
import '../Widgets/bottom_navigation.dart';
import '../Widgets/data_tile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> currentValue = ['0', '0', '0', '0'];

  void getCurrentVal(val, i) {
    ValuesAPI().fetchVal(val).then((value) {
      currentValue[i - 1] = value[0]['value'];
    });
  }

  void reload() {
    setState(() {
      getCurrentVal("temperature", 1);
      getCurrentVal("humidity", 2);
      getCurrentVal("tds", 3);
      getCurrentVal("co2", 4);
    });
  }

  @override
  Widget build(BuildContext context) {
    reload();

    List<Map<String, dynamic>> tile = [
      {
        'title': 'TEMPERATURE',
        'value': '${currentValue[0]} °C',
      },
      {
        'title': 'HUMIDITY',
        'value': currentValue[1],
      },
      {
        'title': 'TDS',
        'value': currentValue[2],
      },
      {
        'title': 'CO2',
        'value': currentValue[3],
      },
    ];

    return Scaffold(
      backgroundColor: Clr.background,
      body: GestureDetector(
        onVerticalDragUpdate: (ctx) {
          reload();
        },
        child: Padding(
          padding: const EdgeInsets.only(top: 80, left: 0, right: 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: InkWell(
                  onTap: reload,
                  child: Text(
                    ' Dashboard',
                    style: GoogleFonts.montserrat(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Image.asset('assets/home_page/ilustration.png'),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Daily Feed',
                          style: GoogleFonts.inter(
                            fontSize: 16,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              "Details",
                              style: GoogleFonts.inter(
                                color: Clr.link,
                                fontSize: 16,
                              ),
                            ),
                            const Icon(Icons.arrow_forward),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    padding: const EdgeInsets.only(bottom: 20, top: 10),
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        for (var item in tile)
                          DataTile(title: item['title'], value: item['value']),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Daily Analytics',
                          style: GoogleFonts.inter(
                            fontSize: 16,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              "Details",
                              style: GoogleFonts.inter(
                                color: Clr.link,
                                fontSize: 16,
                              ),
                            ),
                            const Icon(Icons.arrow_forward),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SingleChildScrollView(
                    padding: EdgeInsets.only(bottom: 20, top: 10),
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        DateTile(day: 'MON', date: '08'),
                        DateTile(day: 'TUE', date: '09'),
                        DateTile(day: 'WED', date: '10'),
                        DateTile(day: 'THU', date: '11'),
                        DateTile(day: 'FRI', date: '12'),
                        DateTile(day: 'SAT', date: '13'),
                        DateTile(day: 'SUN', date: '14'),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavigation(0),
    );
  }
}
