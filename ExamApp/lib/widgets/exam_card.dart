import 'package:flutter/material.dart';
import '../models/exam.dart';
import 'package:intl/intl.dart';

class ExamCard extends StatelessWidget {
  final Exam exam;
  const ExamCard({super.key, required this.exam});

  bool get isPast => DateTime.now().isAfter(exam.dateTime);

  @override
  Widget build(BuildContext context) {
    final dateFormatted = DateFormat('dd.MM.yyyy').format(exam.dateTime);
    final timeFormatted = DateFormat('HH:mm').format(exam.dateTime);

    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: BorderSide(
          color: isPast ? Colors.grey.shade300 : Colors.blue.shade200,
          width: 1.2,
        ),
      ),
      elevation: 1.5,
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      color: isPast ? Colors.grey.shade100 : Colors.blue.shade50,
      child: ListTile(
        leading: Icon(
          isPast ? Icons.check_circle_outline : Icons.schedule_outlined,
          color: isPast ? Colors.grey : Colors.blueAccent,
          size: 32,
        ),
        title: Text(
          exam.subject,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 16,
          ),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("📅 Датум: $dateFormatted"),
              Text("⏰ Време: $timeFormatted"),
              Text("🏫 Простории: ${exam.rooms.join(', ')}"),
            ],
          ),
        ),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
      ),
    );
  }
}
