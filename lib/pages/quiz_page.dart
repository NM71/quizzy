import 'package:flutter/material.dart';
import 'quiz_brain.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  _QuizPageState createState() => _QuizPageState();
}

int questionNumber = 0;
QuizBrain quizBrain = QuizBrain();
bool correctAnswer = quizBrain.generalKnowledge[questionNumber].questionAnswer;

List<Icon> scoreKeeper = [];

class _QuizPageState extends State<QuizPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                quizBrain.generalKnowledge[questionNumber].questionText,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green, // background
                foregroundColor: Colors.white, // foreground
              ),
              onPressed: () {
                if(correctAnswer == true) {
                  scoreKeeper.add(const Icon(Icons.check,color: Colors.green,));
                } else {
                  scoreKeeper.add(const Icon(Icons.close,color: Colors.red,));
                }
                setState(() {
                  questionNumber++;
                });
              },
              child: const Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red, // background
                foregroundColor: Colors.white, // foreground
              ),
              onPressed: () {
                if(correctAnswer == false) {
                  scoreKeeper.add(const Icon(Icons.close,color: Colors.red,));
                } else {
                  scoreKeeper.add(const Icon(Icons.check,color: Colors.green,));
                }
                setState(() {
                  questionNumber++;
                });
              },
              child: const Text(
                'False',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        // TODO: Add a Row here as your score keeper
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: scoreKeeper,
          ),
        )
      ],
    );
  }
}
