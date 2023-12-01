import 'package:flutter/material.dart';
import 'package:quiz/questions.dart';
import 'package:quiz/questions_summary.dart';

class ResultsScreen extends StatelessWidget{

  @override
  const ResultsScreen({required this.chosenAnswers, super.key});

  final List<String> chosenAnswers;

  List <Map<String,Object>> getSummaryData(){
    final List<Map<String,Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++){
      summary.add({
        'questions-index' : i,
        'question' : questions[i].text,
        'correct_answer' : questions[i].answers[0],
        'user_answer' : chosenAnswers[i]
      });
    }
    return summary;
  }
  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final totalQuestions = questions.length;
    final correctQuestions = summaryData.where((data){
     return data ['user-answer'] == data['correct-answer'];
    }).length;

    return SizedBox(
          width: double.infinity,
          child: Container(
          margin: const EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('You answered $correctQuestions out of $totalQuestions answers '
                  'correctly!'),
              const SizedBox(height: 30),
              QuestionsSummary(summaryData),
              const SizedBox(height: 30),
              TextButton(
                  onPressed: (){},
                  child: const Text('Restart the Quiz!')
              )
            ],
          ),
          ),
        );
  }


}