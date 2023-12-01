import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget{

  @override
  const StartScreen(this.startQuiz, {super.key});
  final void Function() startQuiz;


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min, //for centring and making the col take
// min available space,
          children: [
            Image.asset('assets/quiz-logo.png'),
            const Text('Learn Flutter the fun way!',
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 35),
            OutlinedButton.icon(
                onPressed: startQuiz,
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.white,
                ),
              icon: const Icon(Icons.add_box_rounded),
              label: const Text('Start Quiz',
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
              ),
              )
                /*const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll<Color>(
                      Colors.deepPurple),
                  shadowColor: MaterialStatePropertyAll<Color>(
                      Color.fromARGB(100, 46, 22, 90)),
                ),
                )*/
            )
          ]
      ),
    );
  }}
