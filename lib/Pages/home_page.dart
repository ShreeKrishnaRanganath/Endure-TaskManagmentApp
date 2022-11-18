import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:endure/Pages/calendar/calendar.dart';
import 'package:endure/Pages/clock_page/analogclock/analog_clock.dart';
import 'package:endure/Pages/clock_page/pomodoro/pomodoro_page.dart';
import 'package:endure/Pages/clock_page/stopwatch.dart';
import 'package:endure/Pages/todo/todo_view.dart';
import 'package:endure/Pages/clock_page/clock_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final screens = [
    todoview(),
    CountdownPage(),
    ClockHome(),
    StopWatch(),
    CalendarWidget(),

    // StopWatch(),
  ];
  int currentIndex = 2;
  int index = 2;
  bool? ext;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Color(0xFF2D2F41),
      body: screens[currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Color.fromARGB(0, 45, 47, 65),
        index: index,
        color: Color(0xFfD5D8B5),
        buttonBackgroundColor: Color.fromARGB(255, 209, 219, 184),
        height: 60,
        animationDuration: Duration(milliseconds: 300),
        onTap: (index) => setState(() => currentIndex = index),
        items: [
          Icon(Icons.task_alt_rounded),
          Icon(Icons.access_time),
          Icon(Icons.home),
          Icon(Icons.timer_outlined),
          Icon(Icons.calendar_today),
        ],
      ),
    );
  }
}
