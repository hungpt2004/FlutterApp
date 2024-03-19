import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: QuoteList()));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(
        author: 'Oscar Wilde',
        text: 'Be yourself; everyone else is already taken'),
    Quote(
        author: 'Oscar Wilde',
        text: 'I have nothing to declare except my genius'),
    Quote(
        author: 'Oscar Wilde',
        text: 'The truth is rarely pure and never simple')
  ];

  void addQuote(Quote newQuote){
    setState(() {
      quotes.add(newQuote);
    });
  }

  bool isAddingQuote = false; // Biến để kiểm soát trạng thái hiển thị nhập mới

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: ListView(
        children: quotes
            .map((quote) => QuoteCard(
          quote: quote,
          delete: () {
            setState(() {
              quotes.remove(quote);
            });
          },
          add: addQuote,
        ))
            .toList(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            isAddingQuote = !isAddingQuote; // Khi bấm vào FAB, đảo ngược trạng thái
          });
        },
        child: Icon(Icons.add),
      ),
      // Hiển thị các widget nhập mới nếu isAddingQuote là true
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: isAddingQuote ? AddQuoteForm(add: addQuote) : null,
    );
  }
}

class Quote {
  String text;
  String author;
  Quote({required this.text, required this.author});
}

class QuoteCard extends StatelessWidget {
  final Quote quote;
  final Function delete;
  final Function add;

  QuoteCard({required this.quote, required this.delete, required this.add});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 6.0),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.grey[800],
              ),
            ),
            SizedBox(height: 8.0),
            TextButton.icon(
              onPressed: () {
                delete();
              },
              label: Text('delete quote'),
              icon: Icon(Icons.delete),
            ),
          ],
        ),
      ),
    );
  }
}

class AddQuoteForm extends StatefulWidget {
  final Function add;

  AddQuoteForm({required this.add});

  @override
  _AddQuoteFormState createState() => _AddQuoteFormState();
}

class _AddQuoteFormState extends State<AddQuoteForm> {
  final TextEditingController authorController = TextEditingController();
  final TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextField(
              controller: authorController,
              decoration: InputDecoration(
                hintText: 'Input author...',
                contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
              ),
            ),
            SizedBox(height: 8.0),
            TextField(
              controller: textController,
              decoration: InputDecoration(
                hintText: 'Input quote...',
                contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
              ),
            ),
            SizedBox(height: 8.0),
            ElevatedButton.icon(
              onPressed: () {
                String newAuthor = authorController.text;
                String newQuoteText = textController.text;
                if(newQuoteText.isNotEmpty && newAuthor.isNotEmpty){
                  Quote newQuote = Quote(author: newAuthor, text: newQuoteText);
                  widget.add(newQuote);
                  authorController.clear();
                  textController.clear();
                }
              },
              label: Text('Add Quote'),
              icon: Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
