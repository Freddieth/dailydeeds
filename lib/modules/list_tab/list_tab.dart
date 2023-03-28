import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:dailydeeds/modules/list_tab/taskitem/taskitem.dart';
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
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          CalendarTimeline(
            initialDate: _selectedDate,
            firstDate: DateTime.now(),
            lastDate: DateTime.now().add(const Duration(days: 365)),
            onDateSelected: (date) {
              setState(() {
                _selectedDate = date;
              });
            },
            leftMargin: 5,
            dayNameColor: Theme.of(context).colorScheme.onSecondary,
            monthColor: Theme.of(context).colorScheme.secondary,
            dayColor: Theme.of(context).colorScheme.primary,
            activeDayColor: Theme.of(context).colorScheme.onSecondary,
            activeBackgroundDayColor: Theme.of(context).colorScheme.primary,
            dotsColor: Theme.of(context).colorScheme.background,
            selectableDayPredicate: (date) => true,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) => Taskitem(
                'Title',
                'Descroption',
                'Date/Time',
              ),
              itemCount: 10,
            ),
          )
        ],
      ),
    );
  }
}
