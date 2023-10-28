import 'package:flutter/material.dart';

void main() {
  runApp(QuizApp());
}

class QuizApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LanguageSelectionScreen(),
    );
  }
}

class LanguageSelectionScreen extends StatelessWidget {
  final List<String> languages = [
    'Spanish',
    'French',
    'German',
    'Italian',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Quiz')),
        backgroundColor: Colors.green,
      ),
      body: ListView.builder(
        itemCount: languages.length,
        itemBuilder: (context, index) {
          final language = languages[index];
          return Card(
            color: Colors.green,
            elevation: 5,
            margin: EdgeInsets.all(8),
            child: ListTile(
              title: Center(
                child: Text(
                  language,
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => QuizScreen(language),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

class QuizScreen extends StatefulWidget {
  final String selectedLanguage;

  QuizScreen(this.selectedLanguage);

  @override
  _QuizScreenState createState() => _QuizScreenState(selectedLanguage);
}

class _QuizScreenState extends State<QuizScreen> {
  final String selectedLanguage;
  int currentQuestionIndex = 0;
  int score = 0;

  _QuizScreenState(this.selectedLanguage);

  late List<Question> questions;

  @override
  void initState() {
    super.initState();
    questions = getQuestionsForLanguage(selectedLanguage);
  }

  List<Question> getQuestionsForLanguage(String language) {
    if (language == 'Spanish') {
      return [
        Question(
          text: 'How do you say "hello" in Spanish?',
          options: ['Hola', 'Bonjour', 'Hallo', 'Ciao'],
          correctOption: 0,
        ),
        Question(
          text: 'What is the capital of Spain?',
          options: ['Madrid', 'Barcelona', 'Valencia', 'Seville'],
          correctOption: 0,
        ),
      ];
    } else if (language == 'French') {
      return [
        Question(
          text: 'How do you say "hello" in French?',
          options: ['Hola', 'Bonjour', 'Hallo', 'Ciao'],
          correctOption: 1,
        ),
        Question(
          text: 'What is the official language of France?',
          options: ['Spanish', 'German', 'French', 'Italian'],
          correctOption: 2,
        ),
      ];
    } else if (language == 'German') {
      return [
        Question(
          text: 'How do you say "hello" in German?',
          options: ['Hola', 'Bonjour', 'Hallo', 'Ciao'],
          correctOption: 2,
        ),
        Question(
          text: 'What is the largest city in Germany?',
          options: ['Berlin', 'Munich', 'Hamburg', 'Cologne'],
          correctOption: 0,
        ),
      ];
    } else if (language == 'Italian') {
      return [
        Question(
          text: 'How do you say "hello" in Italian?',
          options: ['Hola', 'Bonjour', 'Ciao', 'Hallo'],
          correctOption: 2,
        ),
        Question(
          text: 'What is the famous tower in Italy?',
          options: ['Eiffel Tower', 'Big Ben', 'Leaning Tower of Pisa', 'Colosseum'],
          correctOption: 2,
        )];
    }
    return [];
  }

  void answerQuestion(int selectedOption) {
    if (selectedOption == questions[currentQuestionIndex].correctOption) {
      setState(() {
        score++;
      });
    }

    if (currentQuestionIndex < questions.length - 1) {
      setState(() {
        currentQuestionIndex++;
      });
    } else {
      // Quiz is completed
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => QuizResultScreen(score, questions.length),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz in $selectedLanguage'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          children: [
            if (currentQuestionIndex < questions.length)
              QuestionWidget(questions[currentQuestionIndex], answerQuestion),
            Text('Score: $score/${questions.length}'),
          ],
        ),
      ),
    );
  }
}

class Question {
  final String text;
  final List<String> options;
  final int correctOption;

  Question({
    required this.text,
    required this.options,
    required this.correctOption,
  });
}

class QuestionWidget extends StatelessWidget {
  final Question question;
  final Function(int) onAnswered;

  QuestionWidget(this.question, this.onAnswered);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(question.text),
        Column(
          children: question.options.asMap().entries.map((entry) {
            final index = entry.key;
            final option = entry.value;
            return ElevatedButton(
              onPressed: () => onAnswered(index),
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
              ),
              child: Text(
                option,
                style: TextStyle(color: Colors.white),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}

class QuizResultScreen extends StatelessWidget {
  final int score;
  final int totalQuestions;

  QuizResultScreen(this.score, this.totalQuestions);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz Result'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('You scored $score out of $totalQuestions'),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Back'),
            ),
          ],
        ),
      ),
    );
  }
}