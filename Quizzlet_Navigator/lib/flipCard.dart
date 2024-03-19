import 'package:flutter/material.dart';

class FlipCard{
  late final String question;
  late final String answer;
  late final CardFront front;
  late final CardBack back;
  FlipCard({required this.question, required this.answer}){
    front = CardFront(text: question);
    back = CardBack(text: answer);
  }
}


class CardFront extends StatelessWidget {

  late String text = "";
  static const TextStyle textStyle = TextStyle(
      color: Colors.black,
      fontSize: 16,
      decoration: TextDecoration.none
  );

  CardFront({Key? key, required this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 300,
      color: Colors.pink[100],
      child: Align(
        alignment: Alignment(0, 0),
        child: Text(text, style: textStyle),
      ),
    );
  }
}

class CardBack extends StatelessWidget {

  late String text = "";
  static const TextStyle textStyle = TextStyle(
      color: Colors.black,
      fontSize: 16,
      decoration: TextDecoration.none
  );


  CardBack({Key? key, required this.text});
  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scaleX: -1,
      child: Container(
        width: 300,
        height: 300,
        color: Colors.pink[100],
        child: Align(
          alignment: Alignment.center,
          child: Text(text, style: textStyle),
        ),
      ),
    );
  }
}