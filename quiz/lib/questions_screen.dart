import 'package:flutter/material.dart';
import 'package:quiz/answer_button.dart';
import 'package:quiz/questions.dart';

class QuestionsScreen extends StatefulWidget{

  @override
  const QuestionsScreen({required this.onSelectAnswer, super.key});

  final void Function(String ans) onSelectAnswer;

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen>{

  var currentQuestionIndex = 0;
  void answerQuestion(String selectedAns){

    widget.onSelectAnswer(selectedAns);

    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(currentQuestion.text,
              style: const TextStyle(
                color: Colors.white
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 40),
           ...currentQuestion.getShuffledList().map((item){
             return AnswerButton(
                 answer: item,
                 onTap: (){
                   answerQuestion(item);
                 }
             );
           }//map func ends
           )//answers.map ends
          ],
        ),
      ),
    );
  }//build
}//class
