import 'package:flutter/material.dart';

import '../Widgets/bottom_navigation.dart';

class ControlPage extends StatelessWidget {
  const ControlPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Control Page'),
      ),
      bottomNavigationBar: BottomNavigation(1),
    );
  }
}