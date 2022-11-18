import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class CalendarWid extends StatefulWidget {
  const CalendarWid({Key? key}) : super(key: key);

  @override
  State<CalendarWid> createState() => _CalendarWidState();
}

class _CalendarWidState extends State<CalendarWid> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SfCalendar(
        view: CalendarView.schedule,
        allowedViews: <CalendarView>[
          CalendarView.month,
          CalendarView.week,
          CalendarView.workWeek,
          CalendarView.day,
          CalendarView.schedule,
        ],
      ),
    );
  }
}
