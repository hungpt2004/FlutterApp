import 'package:flutter/material.dart';
import 'package:quizzlet_navigator/subject.dart';
import 'package:quizzlet_navigator/subjectPage.dart';
import 'package:quizzlet_navigator/subject.dart';
import 'package:quizzlet_navigator/subjectPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Map<String,Map<String, String>> subjectTitles = {
    "MAE101": {
      "domain":"tập xác định",
      "intergral criteria": "tiêu chuẩn tích phân dùng để xác định xem có phân kì hay hội tụ",
      "power series" : "chuỗi lũy thừa",
      "radius of convergence" : "R",
      "interval of convergence" : "khoảng hội tụ"
    },
    "MAD101": {
      "Conjunction":"phép hội kí hiệu : and",
      "intergral criteria": "tiêu chuẩn tích phân dùng để xác định xem có phân kì hay hội tụ",
      "proposition" : "mệnh đề",
      "contradiction" : "a compound proposition that is always false",
      "tautology" : "a compound proposition that is always true"
    },
    "PRF192": {
      "Which of the following is not a valid variable name declaration?":"a) int _a3; b) int a_3; c) int 3_a; d) int _3a",
      "Which of the following is not a valid C variable name?": "a) int number; b) float rate; c) int variable_count; d) int \$main;",
      "Which data type is most suitable for storing a number 65000 in a 32-bit system?" : "unsigned short",
      "What is the size of an int data type?" : "Depends on the system/compiler",
      "Variable names beginning with underscore is not encouraged." : "To avoid conflicts since library routines use such names"
    },
    "DBI202": {
      "A ____ is a relation name, together with the attributes of that relation.":"Schema",
      "intergral criteria": "tiêu chuẩn tích phân dùng để xác định xem có phân kì hay hội tụ",
      "A _____ is a language for defining data structures" : "DDL",
      "What is another term for a row in a relational table?" : "Tuple",
      "What is the benefit of \"de-normalization\"?" : "The main benefit of de-normalization is improved performance with simplified data retrieval"
    },
    "CSD201": {
      "Which one of the following is an application of Stack Data Structure?":"Managing function calls, The stock span problem, Arithmetic expression evaluation.",
      "An algorithm that calls itself directly or indirectly is known as": "Recursion",
      "Which data structure allows deleting data elements from front and inserting at rear?" : "Queues",
      "A binary tree whose every node has either zero or two children is called" : "Extended binary tree",
      "The depth of a complete binary tree is given by" : "Dn = log2n + 1"
    }
  };
  late List<Subject> subjects = [];
  @override
  void initState(){
    subjects = [
      for(String title in subjectTitles.keys)
        Subject(subjectTitles[title]! ,title: title),
    ];
  }
  // (subjects);

  @override
  Widget build(BuildContext context) {
    // subjects.forEach((element) {
    //   print(element.title);
    //   element.cards.forEach((element) {
    //     print(element.question);
    //     print(element.answer);
    //   });
    // });
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
            "Subjects"
        ),
      ),
      body: GridView.count(
          crossAxisCount: 2,
          childAspectRatio: 400/300,
          padding: EdgeInsets.all(20),
          mainAxisSpacing: 30,
          crossAxisSpacing: 30,
          children: List.generate(subjects.length, (index) {
            return GestureDetector(
              onTap: ()async{
                int i = 0;
                var nextPage=true;
                while(nextPage && index+i<subjects.length) {
                  nextPage = await Navigator.push(context, MaterialPageRoute(builder: (context){
                    return SubjectPage(subject: subjects[index+i]);
                  }));
                  i++;
                }
              },
              child: Card(
                child: Center(
                  child: Text(
                    subjects[index].title,
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ),
              ),
            );
          })
      ),
    );
  }
}

