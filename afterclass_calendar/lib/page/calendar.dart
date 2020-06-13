import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class Calendar extends StatelessWidget {
  CalendarController _calendarController;
  // @override
  // Widget build(BuildContext context) {
  //   return Center(
  //     child: Text("2"),
  //   );
  // }

  void initState() {
    initState();
    _calendarController = CalendarController();
  }

  void dispose() {
    _calendarController.dispose();
    dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      locale: 'zh_CN',
      calendarController: _calendarController,
    );
  }
}

//https://pub.dev/packages/table_calendar
//https://github.com/aleksanderwozniak/table_calendar/tree/master/example
