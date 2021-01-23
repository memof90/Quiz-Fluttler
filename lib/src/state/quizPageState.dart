import 'package:flutter/material.dart';
import 'package:quizzler/src/Model/questionModel.dart';

// manage state of fluttler app
class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  // present icons to answer its corect o incorrect
  List<Icon> sckoreKeeper = [];
// present question
  // List<String> questions = [
  //   'You can lead a cow down stairs but not up stairs.',
  //   'Approximately one quarter of human bones are in the feet.',
  //   'A slug\'s blood is green.'
  // ];
  int questionNumber = 0;
// present if question its true o false
  // List<bool> answer = [false, true, true];

  List<Question> questionBank = [
    Question(q: 'You can lead a cow down stairs but not up stairs.', a: false),
    Question(
        q: 'Approximately one quarter of human bones are in the feet.',
        a: true),
    Question(q: 'A slug\'s blood is green.', a: true),
  ];

  // Question q1 = Question(
  //     q: 'You can lead a cow down stairs but not up stairs.', a: false);

  @override
  Widget build(BuildContext context) {
    // correct varibel local
    bool correctAnswer;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
            flex: 5,
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Center(
                child: Text(
                  questionBank[questionNumber].questionText,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 25.0, color: Colors.white),
                ),
              ),
            )),
        Expanded(
            child: Padding(
          padding: EdgeInsets.all(15.0),
          child: FlatButton(
            textColor: Colors.white,
            color: Colors.green,
            child: Text(
              'True',
              style: TextStyle(color: Colors.white, fontSize: 20.0),
            ),
            onPressed: () => {
              correctAnswer = questionBank[questionNumber].questionAnswer,
              if (correctAnswer == true)
                {print('User got it right!')}
              else
                {print('User got it wrong!')},
              setState(() {
                questionNumber++;
              }),
              print(questionNumber++)
            },
          ),
        )),
        Expanded(
            child: Padding(
          padding: EdgeInsets.all(15.0),
          child: FlatButton(
            textColor: Colors.white,
            color: Colors.red,
            child: Text(
              'False',
              style: TextStyle(color: Colors.white, fontSize: 20.0),
            ),
            onPressed: () => {
              correctAnswer = questionBank[questionNumber].questionAnswer,
              if (correctAnswer == false)
                {print('User got it right!')}
              else
                {print('User got it wrong!')},
              setState(() {
                questionNumber++;
              }),
              print(questionNumber++)
            },
          ),
        )),
        Row(
          children: sckoreKeeper,
        )
      ],
    );
  }
}
