import 'package:flutter/material.dart';


void main() {
  runApp(
    MaterialApp(
        home: Scaffold(
          body: const HomeWidget(),
        )),
  );
}

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  late int index;

  @override
  void initState() {
    super.initState();
    index = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('플러터에서 화면 이동하기'),
      ),
      body: homeBody(),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'user'),
        ],
        currentIndex: index,
        onTap: (newIndex) => setState(() {
          index = newIndex;
        }),
      ),
    );
  }

  Widget homeBody() {
    switch (index) {
      case 1:
        return const Center(child: Icon(Icons.search, size: 100));
      case 2:
        return const Center(child: Icon(Icons.person, size: 100));
      case 0:
      default:
        return const Center(child: Icon(Icons.home, size: 100));
    }
  }
}
