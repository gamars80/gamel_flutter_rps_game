import 'package:flutter/material.dart';
import 'package:flutter_example/screen/new_page.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(
    MaterialApp.router(
      routerConfig: GoRouter(
        initialLocation: '/',
        routes: [
          GoRoute(
              path: '/',
              name: 'Home',
              builder: (contex, _) => const HomeWidget()),
          GoRoute(
              path: '/new',
              name: 'New',
              builder: (contex, _) => const NewPage(),
              routes: [

              ]
          ),
          GoRoute(
              path: '/new1',
              name: 'New1',
              builder: (contex, _) => const NewPage2()),
        ],
      ),
    ),
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
        title: const Text('플러터에서 화면 이동하기2'),
      ),
      body: Center(
        child: TextButton(
          child: const Text('Go to Page'),
          onPressed: () {
            // Navigator.push(context, MaterialPageRoute(builder: (context) => const NewPage()),);
            context.pushNamed('New');
          },
        ),
      ),
    );
  }
}
