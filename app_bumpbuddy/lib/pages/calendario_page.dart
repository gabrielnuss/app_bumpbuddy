import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarioPage extends StatefulWidget {
  const CalendarioPage({super.key});

  @override
  State<CalendarioPage> createState() => _CalendarioPageState();
}

class _CalendarioPageState extends State<CalendarioPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TableCalendar(
          lastDay: DateTime.now().add(Duration(days: 100)),
          firstDay: DateTime.now(),
          focusedDay: DateTime.now(),
          availableCalendarFormats: const {
            CalendarFormat.month: 'Mês',
            CalendarFormat.week: 'Semana',
          },
          headerStyle: HeaderStyle(
            formatButtonTextStyle:
                TextStyle().copyWith(color: Colors.white, fontSize: 15.0),
            formatButtonDecoration: BoxDecoration(
              color: Theme.of(context).colorScheme.inverseSurface,
              borderRadius: BorderRadius.circular(16.0),
            ),
          ),
          calendarStyle: CalendarStyle(
            todayDecoration: BoxDecoration(
              color: Theme.of(context).colorScheme.inverseSurface,
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
