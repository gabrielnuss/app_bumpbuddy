import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarioPage extends StatefulWidget {
  const CalendarioPage({super.key});

  @override
  State<CalendarioPage> createState() => _CalendarioPageState();
}

class _CalendarioPageState extends State<CalendarioPage> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TableCalendar(
          onFormatChanged: (cf) {
            if (cf != _calendarFormat)
              setState(() {
                _calendarFormat = cf;
              });
          },
          calendarFormat: _calendarFormat,
          lastDay: DateTime.now().add(Duration(days: 100)),
          firstDay: DateTime.now(),
          focusedDay: DateTime.now(),
          availableCalendarFormats: {
            CalendarFormat.month: "Mês",
            CalendarFormat.week: "Semana"
          },
          headerStyle: HeaderStyle(
            formatButtonTextStyle:
                TextStyle().copyWith(color: Colors.white, fontSize: 15.0),
            formatButtonDecoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              borderRadius: BorderRadius.circular(16.0),
            ),
          ),
          calendarStyle: CalendarStyle(
            todayDecoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              shape: BoxShape.circle,
            ),
            selectedDecoration: BoxDecoration(
              color: Colors.orange,
              shape: BoxShape.circle,
            ),
            selectedTextStyle: TextStyle(color: Colors.white),
          ),
          onDaySelected: (date, events) {
            // Callback quando um dia é selecionado
            print('Data selecionada: $date');
          },
        ),
      ],
    );
  }
}
