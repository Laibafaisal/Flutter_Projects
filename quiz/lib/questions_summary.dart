import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget{

  const QuestionsSummary(this.data, {super.key});

  final List<Map<String,Object>> data;

  @override
  Widget build(BuildContext context) {
    return Column(
      children:
        data.map(
                (data){
          return Row(children: [
            Text(((data['question_index'] as int) + 1).toString()),
            Expanded(
              child: Column(
                children: [
                  Text(data['question'] as String),
                  const SizedBox(height: 5),
                  Text(data['user-answer'] as String),
                  const SizedBox(height: 5),
                  Text(data['correct-answer'] as String),
                ],
              ),
            )
          ],);
        },
        ).toList(),
    );
  }
}