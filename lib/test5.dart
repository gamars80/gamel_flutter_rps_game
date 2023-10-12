import 'package:flutter/material.dart';

const assetImagePath = 'assets/images';
const bannerImagePath = '$assetImagePath/banner2.jpg';
void main() {
  runApp(
    MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            // title: Text('위젯을 상하 배치하시오'),
            title: const Text('플러터에서 로컬데이터 사용하기'),
          ),
          body: const Body(),
        )),
  );
}

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(bannerImagePath),
    );
  }
}

