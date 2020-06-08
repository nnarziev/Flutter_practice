import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() => runApp(MaterialApp(
      home: QuotesList(),
    ));

class QuotesList extends StatefulWidget {
  @override
  _QuotesListState createState() => _QuotesListState();
}

class _QuotesListState extends State<QuotesList> {
  List<Quote> quotes = [
    Quote(
        text: "Quote number 1 which will be placed in the 1st place",
        author: 'Oscar Wilde1'),
    Quote(
        text: "Quote number 2 which will be placed in the 2nd place",
        author: 'Oscar Wilde2'),
    Quote(
        text: "Quote number 3 which will be placed in the 3rd place",
        author: 'Oscar Wilde3')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
          children: quotes
              .map((quote) => QuoteCard(
                  quote: quote,
                  delete: () {
                    setState(() {
                      quotes.remove(quote);
                    });
                  }))
              .toList()),
    );
  }
}
