import 'package:flutter/material.dart';
import 'package:hotel_menu/screens/homescreen/home_screen.dart';
import 'package:hotel_menu/screens/processing_screen/processing_screen.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({super.key});

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  int indexValue = 0;
  final List screen = [
    HomeScreen(),
    Container(
      color: Colors.red,
    ),
    ProcessingScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[indexValue],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: indexValue,
          onTap: (value) {
            setState(() {
              indexValue = value;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Order"),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart), label: "Cart")
          ]),
    );
  }
}
