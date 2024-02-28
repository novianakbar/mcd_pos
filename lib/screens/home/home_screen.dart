import 'package:flutter/material.dart';
import 'package:mcd/screens/mobile_screen.dart';
import 'package:mcd/screens/tablet_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 600) {
          // Jika lebar layar lebih besar dari 600 (misalnya tablet)
          return TabletScreen();
        } else {
          // Jika lebar layar lebih kecil dari atau sama dengan 600 (misalnya ponsel)
          return MobileScreen();
        }
      },
    );
  }
}
