import 'package:flutter/material.dart';
import 'package:flutter_example/styles/theme.dart';

void main() {
  runApp(
    MaterialApp(
      home: const HomeWidget(),
      theme: customTheme,
      // theme: ThemeData(
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
      //   useMaterial3: true,
      //   textTheme: const TextTheme(
      //     bodyLarge: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),
      //   )
      // colorScheme: ColorScheme.dark(),
      // colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo)
      // colorScheme: const ColorScheme.light(
      //   primary: Colors.indigo,
      //   secondary: Colors.green,
      //   tertiary: Colors.yellow
      // ),
      // appBarTheme: const AppBarTheme(
      //   backgroundColor: Colors.red,
      // )
    ),
  );
}

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    // final textTheme = Theme.of(context).textTheme;
    final textTheme = customTheme.textTheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('플러터에서 테마'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Press Count',
              style: textTheme.bodyMedium,
            ),
            Text(
              '$count',
              style: textTheme.titleLarge,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            count++;
          });
        },
      ),
    );
  }
}
