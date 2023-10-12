import 'package:flutter/material.dart';

import 'game/game_body.dart';

void main() {
  runApp(const RSPApp());
}

class RSPApp extends StatelessWidget {
  const RSPApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('가위바위보 게임'),
        ),
        body: const GameBody(),
      ),
    );
  }
}
