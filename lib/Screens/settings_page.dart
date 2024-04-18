import 'package:flutter/material.dart';

import '../Widgets/bottom_navigation.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Settings Page'),
      ),
      bottomNavigationBar: BottomNavigation(2),
    );
  }
}