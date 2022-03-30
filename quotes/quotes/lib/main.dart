import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() {
  runApp(MaterialApp(
    home: Quotes(),
  ));
}

class Quotes extends StatefulWidget {
  @override
  _QuotesState createState() => _QuotesState();
}

class _QuotesState extends State<Quotes> {
  List<Quote> quotes2 = [
    Quote(
        author: '- Doctor Who',
        text: '"First things first, but not necessarily in that order."'),
    Quote(
        author: '- Al Boliska',
        text:
            '"Do you realize if it weren\'t for Edison we\'d be watching TV by candlelight?"'),
    Quote(
        author: '- Matthew Oliphant',
        text:
            '"I don\'t think there is a proper way to celebrate something which makes you happy."')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber[100],
        appBar: AppBar(
          backgroundColor: Colors.amber[300],
          title: Text(
            'Quote List',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                fontSize: 25),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: quotes2
              .map((quote) => QuoteCard(
                  quote1: quote,
                  delete: () {
                    setState(() {
                      quotes2.remove(quote);
                    });
                  }))
              .toList(),
        ));
  }
}
