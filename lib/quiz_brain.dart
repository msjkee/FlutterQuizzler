import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questionsList = [
    Question(questionText: '3 is bigger than 2', questionAnswer: true),
    Question(questionText: 'Argentina is currently a winner of Football World Cup', questionAnswer: true),
    Question(questionText: 'Bellingham is the best player in the world', questionAnswer: true),
    Question(questionText: 'The capital of Australia is Sydney', questionAnswer: false),
    Question(questionText: 'Flutter is developed by Google', questionAnswer: true),
    Question(questionText: 'The sun revolves around the Earth', questionAnswer: false),
    Question(questionText: 'There are 365 days in a leap year', questionAnswer: false),
    Question(questionText: 'Python is a type of snake and a programming language', questionAnswer: true),
    Question(questionText: 'Mona Lisa was painted by Leonardo da Vinci', questionAnswer: true),
    Question(questionText: 'Water freezes at 100 degrees Celsius', questionAnswer: false)
  ];

  void nextQuestion() {
    if (_questionNumber < _questionsList.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionsList[_questionNumber].questionText;
  }

  bool getQuestionAnswer() {
    return _questionsList[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber == _questionsList.length - 1) {
      return true;
    }
    return false;
  }

  void resetQuiz() {
    _questionNumber = 0;
  }
}
