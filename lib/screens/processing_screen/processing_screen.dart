import 'package:flutter/material.dart';
import 'package:hotel_menu/screens/processing_screen/history_screen/history_screen.dart';
import 'package:hotel_menu/screens/processing_screen/ongoing_screen/ongoing_screen.dart';

class ProcessingScreen extends StatefulWidget {
  const ProcessingScreen({super.key});

  @override
  State<ProcessingScreen> createState() => _ProcessingScreenState();
}

class _ProcessingScreenState extends State<ProcessingScreen> {
  int? currentIndex;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: DefaultTabController(
          length: 2,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                TabBar(
                    indicatorSize: TabBarIndicatorSize.tab,
                    onTap: (value) {
                      setState(() {
                        currentIndex = value;
                      });
                    },
                    tabs: [
                      Tab(
                        text: "ongoing",
                      ),
                      Tab(
                        text: "History",
                      )
                    ]),
                currentIndex == 0 ? OngoingScreen() : HistoryScreen()
              ],
            ),
          )),
    );
  }
}
