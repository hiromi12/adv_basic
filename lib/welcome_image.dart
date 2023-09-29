import 'package:flutter/material.dart';

class WelcomeImage extends StatefulWidget {
  const WelcomeImage({super.key});
  @override
  State<WelcomeImage> createState() {
    return _WelcomeImage();
  }
}

class _WelcomeImage extends State<WelcomeImage> {
  void startQuiz() {

  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 250,
        ),
        const Text(
          'Learn Flutter the fun way!',
        ),
        TextButton(
          onPressed: startQuiz,
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 28),
          ),
          child: const Text('Start Quiz'),
        ),
      ],
    );
  }
}