import 'package:english_words/english_words.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            // title: Text('위젯을 상하 배치하시오'),
            title: const Text('플러터에서 외부라이브러리 사용하기'),
          ),
          body: const Body(),
        )),
  );
}

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RandomWords();
  }
}

class RandomWords extends StatelessWidget {
  const RandomWords({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final wordList = generateWordPairs().take(5).toList();
    final widgets = wordList
        .map(
          (word) => Text(
        // word.asString,
        word.asCamelCase,
        style: const TextStyle(fontSize: 32),
      ),
    )
        .toList();
    return Column(
      children: widgets,
    );
  }
}
