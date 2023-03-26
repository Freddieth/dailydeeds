import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:flutter/material.dart';

class Listtab extends StatefulWidget {
  const Listtab({Key? key}) : super(key: key);

  @override
  _ListtabState createState() => _ListtabState();
}

class _ListtabState extends State<Listtab> {
  DateTime _selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return CalendarTimeline(
      initialDate: _selectedDate,
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(const Duration(days: 365)),
      onDateSelected: (date) {
        setState(() {
          _selectedDate = date;
        });
      },
      dayNameColor: Theme.of(context).colorScheme.onSecondary,
      leftMargin: 20,
      monthColor: Theme.of(context).colorScheme.secondary,
      dayColor: Theme.of(context).colorScheme.primary,
      activeDayColor: Theme.of(context).colorScheme.onSecondary,
      activeBackgroundDayColor: Theme.of(context).colorScheme.primary,
      dotsColor: Theme.of(context).colorScheme.background,
      selectableDayPredicate: (date) => true,
    );
  }
}
