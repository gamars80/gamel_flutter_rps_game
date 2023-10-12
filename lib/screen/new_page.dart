import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NewPage extends StatelessWidget {
  const NewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome new Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () => context.pop(),
                child: const Text('Go to Back')
            ),
            TextButton(
                onPressed: () => context.pushNamed('New1'),
                child: const Text('Go to New Page2')
            ),
          ],
        ),

      ),
    );
  }
}

class NewPage2 extends StatelessWidget {
  const NewPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome to new page2')
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
              TextButton(onPressed: () {
                Navigator.pop(context);
              }, child: const Text('Go to Back')),
            TextButton(onPressed: () {
              // Navigator.popUntil(context, (route) => route.isFirst);
              context.goNamed('Home');
            }, child: const Text('Go to Home')),
          ],
        ),
      ),
    );
  }
}
