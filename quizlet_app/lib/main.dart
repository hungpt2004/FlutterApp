import 'package:flutter/material.dart';
import 'package:quizlet_app/FlashCardView.dart';
import 'Flashcard.dart';
import 'package:flip_card/flip_card.dart';

void main() => runApp(MyApp());



class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Flashcard> _flashcards = [
    Flashcard(
        question: "What programming language does Flutter use?",
        answer: "Dart"),
    Flashcard(
        question: "What is OOP in programming?",
        answer: "Object-oriented programming"),
    Flashcard(
        question: "What is the PRF192 subject?",
        answer: "Programming Fundamentals"),
    Flashcard(
        question: "What is the CSD201 subject?",
        answer: "Data Structures and Algorithms"),
    Flashcard(
        question: "Is Flutter code easy to learn?",
        answer: "Take it easy!"),
    Flashcard(
        question: "Who teaches you how to write clean code?",
        answer: "Ya boi NhanHC!")
  ];
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                  width: 250,
                  height: 250,
                child: FlipCard(
                  front: FlashCardView(
                    text: _flashcards[_currentIndex].question,
                  ), back: FlashCardView(
                  text: _flashcards[_currentIndex].answer,
                ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  OutlinedButton.icon(
                      onPressed: (){
                    showPreviousCard;
                  }, icon: Icon(Icons.chevron_left), label: Text("Prev")),
                  OutlinedButton.icon(
                      onPressed: (){
                    showNextCard;
                  }, icon: Icon(Icons.chevron_right), label: Text("Next")),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
  void showPreviousCard (){
    setState(() {
      _currentIndex = (_currentIndex >0 ) ? --_currentIndex : _flashcards.length - 1;
    });
  }
  void showNextCard (){
    setState(() {
      _currentIndex = (_currentIndex  < _flashcards.length-1)? ++_currentIndex  : _currentIndex;
    });
  }
}






