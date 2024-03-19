import 'dart:math';
import 'package:flutter/material.dart';
import 'package:quizzlet_navigator/subject.dart';
import 'flipCard.dart';


class SubjectPage extends StatefulWidget {
  SubjectPage({Key? key, required this.subject}) : super(key: key);
  late final Subject subject;

  @override
  State<SubjectPage> createState() => _SubjectPageState();
}

class _SubjectPageState extends State<SubjectPage> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  late List<FlipCard> _cards;

  late Widget _front;
  late Widget _back;
  late Widget _card;

  int currentInd = 0;
  late int cardsLength;

  void setCard(){
    _front = _cards[currentInd].front;
    _back = _cards[currentInd].back;
    _card = _front;
  }
  void nextCard(){
    setState(() {
      currentInd= ++currentInd % cardsLength;
      setCard();
      _controller.reset();
    });
  }
  void previousCard(){
    setState(() {
      currentInd=(currentInd==0)?cardsLength-1:--currentInd;
      setCard();
      _controller.reset();
    });
  }
  @override
  void initState() {
    super.initState();
    // print(widget.subject.title);
    // widget.subject.cards.forEach((element) {
    //     print(element.question);
    //     print(element.answer);
    //   });
    _cards= widget.subject.cards;
    cardsLength = _cards.length;
    setCard();
    _controller = AnimationController(vsync: this, duration: Duration(milliseconds: 250));
    _controller.addListener(() {
      if (_controller.value >= .5 && _card != _back) {
        setState(() => _card = _back);
      } else if (_controller.value < .5 && _card != _front) {
        setState(() => _card = _front);
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){Navigator.pop(context, false);},
          icon: const Icon(Icons.keyboard_double_arrow_left),
        ),
        title:Text(widget.subject.title),
        actions: [
          IconButton(
            onPressed: (){Navigator.pop(context, true);},
            icon: const Icon(Icons.keyboard_double_arrow_right),
          ),
        ],
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                if (_controller.value == 1) {
                  _controller.reverse(from: 1);
                } else {
                  _controller.forward(from: 0);
                }
              },
              child: AnimatedBuilder(
                animation: _controller,
                builder: (c, anim) => Transform(
                  transform: Matrix4.identity()
                    ..setEntry(3, 2, 0.0025)
                    ..rotateY(_controller.value * pi),
                  alignment: FractionalOffset.center,
                  child: _card,
                ),
              ),
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OutlinedButton(
                    onPressed: previousCard,
                    child: Text("Previous")
                ),
                OutlinedButton(
                    onPressed: nextCard,
                    child: Text("Next")
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}