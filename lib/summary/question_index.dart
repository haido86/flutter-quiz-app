import 'package:flutter/material.dart';

class QuestionIndex extends StatelessWidget {
  final Map<String, Object> data;

  const QuestionIndex(this.data, {super.key});

  @override
  Widget build(context) {
    return Container(
      margin: const EdgeInsetsDirectional.only(end: 20),
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: data['correct_answer'] == data['user_answer']
            ? Colors.amber
            : Colors.blue,
        shape: BoxShape.circle,
      ),
      child: Text(
        ((data['question_index'] as int) + 1).toString(),
        style: const TextStyle(fontWeight: FontWeight.w800),
      ),
    );
  }
}
