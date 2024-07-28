import 'question.dart';

class QuizList {
  int _questionNum = 0;

  List<Questions> _questionsList = [
    Questions(q: 'Some cats are actually allergic to humans', a: true),
    Questions(
        q: ' The Earth is the largest planet in the solar system.', a: false),
    Questions(q: 'Water boils at 100 degrees Fahrenheit.', a: false),
    Questions(q: 'The Great Wall of China is visible from space.', a: false),
    Questions(
        q: 'Oxygen is the most abundant element in the Earths atmosphere.',
        a: true),
    Questions(q: 'The human body has five senses.', a: false),
    Questions(q: ' Penguins can fly.', a: false),
    Questions(q: 'The Atlantic Ocean is the largest ocean on Earth.', a: false),
    Questions(
        q: 'The Statue of Liberty was a gift from France to the United States.',
        a: true),
    Questions(q: 'The capital of Australia is Sydney.', a: false),
    Questions(
        q: 'The Amazon River is the longest river in the world.', a: true),
  ];

  void nextQuestion() {
    if (_questionNum < _questionsList.length - 1) {
      _questionNum++;
    }
  }

  String getQuestionText() {
    return _questionsList[_questionNum].questionText ?? "";
  }

  bool getQuestionAnswer() {
    return _questionsList[_questionNum].questionAnswer ?? true;
  }
}
