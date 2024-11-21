import 'package:quizlet_two/src/models/question.dart';

class QuizController {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question(question: "It&#039;s not possible to format a write-protected DVD-R Hard Disk.", answer: true),
    Question(question: "The very first recorded computer &quot;bug&quot; was a moth found inside a Harvard Mark II computer.", answer: true),
    Question(question: "The last Windows operating system to be based on the Windows 9x kernel was Windows 98.", answer: false),
  ];

  void nextQuestion(){
    if (_questionNumber < _questionBank.length -1)
    {
      _questionNumber++;
    }
  }
  String getQuestionText(){
    return _questionBank[_questionNumber].question;
  }
  bool getCorrectAnswer(){
    return _questionBank[_questionNumber].answer;
  }
  bool isFinished(){
    if (_questionNumber >= _questionBank.length -1)
    {
      return true;
    }
    else {
      return false;
    }
  }
  void reset(){
    _questionNumber = 0;
  }

}
