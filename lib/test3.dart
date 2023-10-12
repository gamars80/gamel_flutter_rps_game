import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            // title: Text('위젯을 상하 배치하시오'),
            title: const Text('플러터의 콜백'),
          ),
          body: const Body(),
        )),
  );
}

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const TestWidget();
  }
}

class TestWidget extends StatefulWidget {
  const TestWidget({Key? key}) : super(key: key);

  @override
  State<TestWidget> createState() => _TestWidgetState();
}

class _TestWidgetState extends State<TestWidget> {
  int value = 0;

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text(
        'count: $value',
        style: const TextStyle(fontSize: 30),
      ),
      TestButton(addCounter),
    ]);
  }

  void addCounter(int addValue) {
    setState(() => value = addValue + value);
  }
}

class TestButton extends StatelessWidget {
  const TestButton(this.callback,{super.key});

  final Function(int) callback;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      width: double.infinity,
      child: InkWell(
        // child: GestureDetector(
        onTap: () =>callback.call(1),
        onDoubleTap: () => callback.call(5),
        onLongPress: () => callback.call(10),
        child: Center(
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
            decoration: BoxDecoration(border: Border.all()),
            child: const Text(
              'Up Counter',
              style: TextStyle(fontSize: 24),
            ),
          ),
        ),
      ),
    );
  }
}
