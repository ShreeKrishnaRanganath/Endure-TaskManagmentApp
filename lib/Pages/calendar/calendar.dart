import 'package:endure/Pages/calendar/calendar_widget.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class CalendarWidget extends StatelessWidget {
  const CalendarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Calendar'),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 54, 116, 53),
        ),
        body: CalendarWid(),
      );
}
