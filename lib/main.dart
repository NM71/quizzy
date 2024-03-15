import 'package:flutter/material.dart';
import 'package:quizzy/pages/home.dart';
import 'package:quizzy/pages/quiz_page.dart';


void main() => runApp(const Quizzy());

class Quizzy extends StatelessWidget {
  const Quizzy({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: const SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
      // routes: {
      //   '/home': (context) => HomePage(),
      //   '/quizPage': (context) => QuizPage(),
      // },
    );
  }
}

