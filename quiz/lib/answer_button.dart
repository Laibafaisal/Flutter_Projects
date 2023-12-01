import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget{

  @override
  const AnswerButton( {super.key, required this.answer, required this.onTap});

  final String answer;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: ElevatedButton(
          onPressed: onTap,
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 20
            ),
            backgroundColor: const Color.fromARGB(255, 2, 24, 64),
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30)
            )
          ),
          child: Text(answer)
      ),
    );
  }//build
}//class