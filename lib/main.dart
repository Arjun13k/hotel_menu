import 'package:flutter/material.dart';
import 'package:hotel_menu/screens/bottom_navigation_screen/bottom_navigation_screen.dart';

void main() {
  runApp(HotelMenu());
}

class HotelMenu extends StatelessWidget {
  const HotelMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNavigationScreen(),
    );
  }
}
