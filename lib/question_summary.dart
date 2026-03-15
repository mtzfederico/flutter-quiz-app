import 'package:flutter/material.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary({super.key, required this.summaryData});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: summaryData.map((data) {
        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 14,
              backgroundColor: Colors.red,
              child: Text(
                ((data['question_index'] as int) + 1).toString(),
                style: const TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    data['question'] as String,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    data['user_answer'] as String,
                    style: TextStyle(color: Colors.redAccent),
                  ),
                  Text(
                    data['correct_answer'] as String,
                    style: TextStyle(color: Colors.green),
                  ),
                  // const SizedBox(height: 20),
                ],
              ),
            ),
          ],
        );
      }).toList(),
    );
  }
}
