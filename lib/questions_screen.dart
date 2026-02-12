import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions.dart';

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
    final currentQustion = questions[0];

    void answerTapped(int index) {
      print("Answer $index tapped");
    }

    return SizedBox(
      width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(currentQustion.question, style: TextStyle(color: Colors.white, fontSize: 18),),
            const SizedBox(height: 10),
            AnswerButton(answerText: currentQustion.answers[0], onTap: (){answerTapped(0);}),
            const SizedBox(height: 5),
            AnswerButton(answerText: currentQustion.answers[1], onTap: (){answerTapped(1);}),
            const SizedBox(height: 5),
            AnswerButton(answerText: currentQustion.answers[2], onTap: (){answerTapped(2);}),
            const SizedBox(height: 5),
            AnswerButton(answerText: currentQustion.answers[3], onTap: (){answerTapped(3);}),
          ],
        ),
      );
  }
}
