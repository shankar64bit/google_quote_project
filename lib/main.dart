import 'package:flutter/material.dart';
import 'quotes.dart'; // initializing text and author variables to access the data.map
import 'quotecard.dart';

void main() => runApp(MaterialApp(
      home: QuoteList(),
    ));

class QuoteList extends StatefulWidget {
  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(author: 'Osca wide', text: 'Sigma 1 : Be yourself'),
    Quote(author: 'Shake', text: 'Sigma 2 : Be honset'),
    Quote(author: 'Mona', text: 'Sigma 3 : Never judge')
  ];

// Writinng a function for CARD template (template stored in a quote parameter which contains a card template of reusable)
  // Widget quoteTemplate(quote) {

  //   return QuoteCard(quote: quote);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        title: const Text('Quotes'),
        centerTitle: true,
        backgroundColor: Colors.blue[900],
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
            .toList(),
      ),
    );
  }
}
// Statelesswidget created for QuoteCard to access
