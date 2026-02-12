import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';

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
    return SizedBox(
      width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("This is the question", style: TextStyle(color: Colors.white, fontSize: 24),),
            const SizedBox(height: 10),
            AnswerButton(answerText: "answerText", onTap: (){}),
            const SizedBox(height: 5),
            AnswerButton(answerText: "answerText", onTap: (){}),
            const SizedBox(height: 5),
            AnswerButton(answerText: "answerText", onTap: (){}),
            const SizedBox(height: 5),
            AnswerButton(answerText: "answerText", onTap: (){}),
          ],
        ),
      );
  }
}
