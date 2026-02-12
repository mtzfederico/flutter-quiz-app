import 'package:flutter/material.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text("This is the question"),
          const SizedBox(height: 20),
          ElevatedButton(onPressed: () {}, child: const Text("Answer1")),
          const SizedBox(height: 5),
          ElevatedButton(onPressed: () {}, child: const Text("Answer2")),
          const SizedBox(height: 5),
          ElevatedButton(onPressed: () {}, child: const Text("Answer3")),
          const SizedBox(height: 5),
          ElevatedButton(onPressed: () {}, child: const Text("Answer4")),
        ],
      ),
    );
  }
}
