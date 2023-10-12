import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Body(),
      //     home: Scaffold(
      //   appBar: AppBar(
      //     // title: Text('위젯을 상하 배치하시오'),
      //     title: Text('위젯을 상하좌우 배치하시오'),
      //   ),
      //   body: Body(),
      // )
    ),
  );
}

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      ExampleStateless(),
      ExampleStateful(index: 3)
    ]);
  }
}

class ExampleStateless extends StatelessWidget {
  const ExampleStateless({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        color: Colors.red,
      ),
    );
  }
}

class ExampleStateful extends StatefulWidget {
  final int index;
  const ExampleStateful({required this.index,Key? key}) : super(key: key);

  @override
  State<ExampleStateful> createState() => _ExampleStatefulState();
}

class _ExampleStatefulState extends State<ExampleStateful> {
  // late int index;
  //int? index;
  late int _index;
  late TextEditingController textEditingController;

  @override
  void initState() {
    super.initState();
    _index = widget.index;
    textEditingController = TextEditingController();
  }


  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();

  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: GestureDetector(
        onTap: () {
          setState(() {
            if (_index == 5) {
              _index = 0;
              return;
            }
            _index++;

          });

        },
        child: Container(
          color: Colors.blue.withOpacity(_index / 5),
          child: Center(
            child: Text('$_index'),
          ),
        ),
      ),
    );
  }
}

//
// class ConstraintWidget extends StatelessWidget {
//   const ConstraintWidget({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 500,
//       width: 500,
//       color: Colors.blue,
//       child: Center(
//         child: Container(
//           constraints: BoxConstraints.tight(Size(200,200)),
//           width: 300,
//             height: 300,
//             color: Colors.red,
//         ),
//       )
//     );
//   }
// }

// Stack(
// children: [
//   Align(
//     alignment: Alignment.center,
//     child: Container(
//       width: 300,
//       height: 300,
//       decoration: BoxDecoration(
//           color: Colors.red, borderRadius: BorderRadius.circular(150)),
//     ),
//   ),
//   Align(
//     alignment: Alignment.center,
//     child: Container(
//       width: 280,
//       height: 280,
//       decoration: BoxDecoration(
//           color: Colors.white, borderRadius: BorderRadius.circular(140)),
//     ),
//   ),
//   Align(
//     alignment: Alignment.center,
//     bottom: 40,
//     right: 40,
//     child: Text(
//       "Count 0",
//       style: TextStyle(color: Colors.red, fontSize: 32),
//     ),
//   )
// Container(
//   color: Colors.black,
//   width: 500,
//   height: 500,
// ),
// Container(
//   color: Colors.red,
//   width: 400,
//   height: 400,
// ),
// Container(
//   color: Colors.blue,
//   width: 300,
//   height: 300,
// ),
// Align(
//     // bottom: 5,
//     // right: 30,
//   alignment: Alignment(0.5,0.5),
//     child: Container(
//       color: Colors.green,
//       width: 200,
//       height: 200,
//     ))
//   ],
// );
//   Center(
//   child: Container(
//     color: Colors.red,
//     child: Text('Hello'),
//   ),
// );
//   Row(
//   children: [
//     Container(width: 50,height: 200, color: Colors.red,),
//     Expanded(child: Container(color: Colors.blue,width: 100,)),
//     Flexible(child: Container(color: Colors.red, width: 100,))
//     // Flexible(flex: 1,child: Container(color: Colors.red)),
//     // Flexible(flex: 2,child: Container(color: Colors.blue)),
//     // Flexible(flex: 3,child: Container(color: Colors.green)),
//     // Flexible(flex: 4,child: Container(color: Colors.yellow))
//   ],
// );
// }
// }
