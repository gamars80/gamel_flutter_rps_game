import 'package:flutter/material.dart';
import 'package:flutter_example/game/widget/enum.dart';

class GameResult extends StatelessWidget {
  final bool isDone;
  final Result? result;
  final VoidCallback callback;
  const GameResult({this.result,required this.callback,required this.isDone, super.key});

  @override
  Widget build(BuildContext context) {
    if (isDone) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(result!.displayString, style: const TextStyle(fontSize: 32),),
          ),
          const SizedBox(height: 8,),
          TextButton(onPressed: () => callback.call(), child: const Text('다시하기',style: TextStyle(fontSize: 24),))
        ],
      );
    }
    return const Center(
      child: Text(
        '가위 바위 보 중에 선택해주세요',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
    );
  }
}
