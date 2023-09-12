import 'package:flutter/material.dart';
import 'package:medicate/styling/styling.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarWidget extends StatefulWidget {
  const CalendarWidget({super.key});

  @override
  State<CalendarWidget> createState() => _CalendarWidget();
}

class _CalendarWidget extends State<CalendarWidget> {
  final DateTime _focusedDay = DateTime.now();
  late DateTime _selectedDay;

  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      firstDay: DateTime.utc(2010, 10, 20),
      lastDay: DateTime.utc(2040, 10, 20),
      focusedDay: DateTime.now(),
      headerVisible: true,
      daysOfWeekVisible: true,
      sixWeekMonthsEnforced: true,
      shouldFillViewport: false,
      headerStyle: const HeaderStyle(titleTextStyle: TextStyle(fontSize: 20, color: Styling.textColour)),
      calendarStyle: const CalendarStyle(todayDecoration: BoxDecoration(color: Color.fromRGBO(216, 79, 153, 60), shape: BoxShape.circle)),
    );
  }
}
