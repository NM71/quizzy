import 'package:quizzy/pages/question.dart';

class QuizBrain {
  int _questionNumber = 0;

  final List<Question> _questionBank = [
    Question('Some cats are actually allergic to humans', true),
    Question('You can lead a cow down stairs but not up stairs.', false),
    Question('Approximately one quarter of human bones are in the feet.', true),
    Question('A slug\'s blood is green.', true),
    Question('Buzz Aldrin\'s mother\'s maiden name was \'Moon\'.', true),
    Question('It is illegal to pee in the Ocean in Portugal.', true),
    Question(
        'No piece of square dry paper can be folded in half more than 7 times.',
        false),
    Question(
        'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        true),
    Question(
        'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        false),
    Question(
        'The total surface area of two human lungs is approximately 70 square metres.',
        true),
    Question('Google was originally called "Backrub".', true),
    Question(
        'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        true),
    Question(
        'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        true),
    Question(
        'The term "chinaman" refers to a type of delivery bowled by a left-arm orthodox spinner.',
        true),
    Question(
        'A "diamond duck" in cricket occurs when a batsman is dismissed without facing a ball.',
        true),
    Question('The cricketing term "LBW" stands for Leg Before Wicket.', true),
    Question(
        'The highest individual score by a batsman in Test cricket is 400 runs.',
        true),
    Question(
        'A "double hat-trick" in cricket refers to a bowler taking six wickets in six consecutive deliveries.',
        true),
    Question(
        'The term "Yorker" in cricket refers to a delivery bowled at or near the batsman\'s feet.',
        true),
    Question(
        'In cricket, a "doosra" is a type of delivery bowled by a leg-spinner.',
        false),
    Question(
        'The "Duckworth-Lewis" method is used in cricket to calculate target scores in rain-affected matches.',
        true),
    Question(
        'The longest format of cricket is commonly referred to as "Limited Overs Cricket."',
        false),
    Question('A cricket match can end in a tie.', true),
    Question('A "silly mid-off" is a fielding position in cricket.', true),
    Question(
        'The term "Gully" in cricket refers to a type of delivery bowled by a fast bowler.',
        false),
    Question(
        'A "bouncer" in cricket is a delivery aimed at the batsman\'s head.',
        true),
    Question('The ICC Cricket World Cup is held every three years.', false),
  ];

  int questionNum() {
    return _questionNumber + 1;
  }

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
    // print(_questionNumber);
    // print(_questionBank.length);
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getQuestionAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber + 1 == _questionBank.length) {
      // print('Quiz End Reached');
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }

}
