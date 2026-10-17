import 'package:flutter/material.dart';
import 'package:invokhata/core/utils/gst_calendar.dart';

class GstFilingReminderCard extends StatelessWidget {
  final DateTime currentMonth;

  const GstFilingReminderCard({super.key, required this.currentMonth});

  @override
  Widget build(BuildContext context) {
    final gstr1DueDate = GstCalendar.calculateGstr1DueDate(currentMonth);
    final gstr3bDueDate = GstCalendar.calculateGstr3bDueDate(currentMonth);
    final annualReturnDueDate = GstCalendar.calculateAnnualReturnDueDate(DateTime(currentMonth.year));

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'GST Filing Due Dates',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            Text('GSTR-1 Due: ${gstr1DueDate.toLocal().toString().split(' ')[0]}'),
            Text('GSTR-3B Due: ${gstr3bDueDate.toLocal().toString().split(' ')[0]}'),
            Text('Annual Return Due: ${annualReturnDueDate.toLocal().toString().split(' ')[0]}'),
          ],
        ),
      ),
    );
  }
}