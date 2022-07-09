import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Trip History"),
        ),
        body: Center(child: Text(nouns.toString())));
  }
}
