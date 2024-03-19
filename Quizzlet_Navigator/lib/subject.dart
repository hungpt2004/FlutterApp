import 'flipCard.dart';

class Subject{
  late final String title;
  late List<FlipCard> cards;


  Subject(Map<String, String> cards, {required this.title}){
    this.cards = [
      for(String question in cards.keys)
        addNewCard(question: question, answer: cards[question]!)
    ];
  }

  FlipCard addNewCard({required String question, required String answer}){
    return FlipCard(question: question, answer: answer);
  }
}