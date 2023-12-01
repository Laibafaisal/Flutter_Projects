import 'package:flutter/material.dart';
import 'package:quiz/questions_screen.dart';
import 'package:quiz/start_screen.dart';
import 'package:quiz/questions.dart';
import 'package:quiz/results_screen.dart';


class Quiz extends StatefulWidget{
  @override
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'start-screen';
  final List <String> selectedAnswers = [];
  @override
  void initState() {
    activeScreen = 'questions-screen';
    //activeScreen = StartScreen(switchScreen);
    super.initState();
  }
  void switchScreen (){
    setState(() {
      activeScreen =  'questions-screen';
    });
  }

  void chooseAnswer(String ans){
    selectedAnswers.add(ans);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        //selectedAnswers = [];
        activeScreen = 'results-screen';
      });
    }
  }

  @override
  Widget build(BuildContext context) {

    Widget screenWidget = StartScreen(switchScreen);
    if (activeScreen == 'questions-screen'){
      screenWidget = QuestionsScreen(onSelectAnswer: chooseAnswer);
    }

    if (activeScreen == 'results-screen'){
      screenWidget = ResultsScreen(chosenAnswers: selectedAnswers);
    }
    return  Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Colors.deepPurple,
                  Colors.purple,
                ]
            )
        ),
        child: screenWidget,
      ),
    );
  }
}