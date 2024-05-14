import 'package:flutter/material.dart';

import '../Widgets/bottom_navigation.dart';

class ControlPage extends StatefulWidget {
  const ControlPage({super.key});

  @override
  State<ControlPage> createState() => _ControlPageState();
}

class _ControlPageState extends State<ControlPage> {
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
