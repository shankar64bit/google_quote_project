// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'quotes.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;
  final Function delete;
  QuoteCard({required this.quote, required this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(quote.text, // also possible like {$quote.text}
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey[600],
                )),
            const SizedBox(height: 6),
            //Text cards are assigning for reusable cards (code)
            Text(quote.author,
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey[800],
                )),
            const SizedBox(height: 6),
            FlatButton.icon(
              onPressed: () => delete, //error occurs
              label: const Text('Delete'),
              icon: const Icon(Icons.delete),
            ),
          ],
        ),
      ),
    );
  }
}
// Statelesswidget Completed for QuoteCard to access