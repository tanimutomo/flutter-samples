// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.green,
//       ),
//       home: const MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key, this.title}) : super(key: key);
//   final String? title;
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
//   bool flag = false;

//   _click() async {
//     setState() {
//       print("Pressed");
//       flag = !flag;
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text(widget.title!)),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             AnimatedOpacity(
//               opacity: flag ? 0.1 : 1.0,
//               duration: Duration(seconds: 3),
//               child: Text("Disappearable Text", style: Theme.of(context).textTheme.headline4),
//             ),
//             AnimatedSize(
//               vsync: this,
//               duration: Duration(seconds: 3),
//               child: SizedBox(
//                 width: flag ? 50 : 200,
//                 height: flag ? 50 : 200,
//                 child: Container(color: Colors.purple),
//               )
//             ),
//             AnimatedAlign(
//               duration: Duration(seconds: 3),
//               alignment: flag ? Alignment.topLeft : Alignment.bottomRight,
//               child: SizedBox(
//                 width: 50,
//                 height: 50,
//                 child: Container(color: Colors.green)
//               )
//             )
//           ],
//         )
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _click,
//         child: Icon(Icons.add_road),
//       ),
//         // mainAxisAlignment: MainAxisAlignment.end,
//         // children: [
//         // ],
//     );
//   }

//   // @override
//   // Widget build(BuildContext context) {
//   //   return Scaffold(
//   //     appBar: AppBar(
//   //       title: Text(widget.title),
//   //     ),
//   //     body: Center(
//   //       child: Column(
//   //         mainAxisAlignment: MainAxisAlignment.center,
//   //         children: <Widget>[
//   //           AnimatedContainer(
//   //             duration: Duration(seconds: 3),
//   //             width: flag ? 100 : 50,
//   //             height: flag ? 50: 100,
//   //             padding: flag ? EdgeInsets.all(0) : EdgeInsets.all(30),
//   //             margin: flag ? EdgeInsets.all(0) : EdgeInsets.all(30),
//   //             transform: flag ? Matrix4.skewX(0.0) : Matrix4.skewX(0.3),
//   //             color: flag ? Colors.blue : Colors.grey,
//   //           ),
//   //           AnimatedSwitcher(
//   //             duration: Duration(seconds: 3),
//   //             child: flag
//   //               ? Text("Nothing")
//   //               : Icon(Icons.favorite, color: Colors.pink)
//   //           ),
//   //         ],
//   //       ),
//   //     ),
//   //     floatingActionButton: Row(
//   //       mainAxisAlignment: MainAxisAlignment.end,
//   //       children: [
//   //         FloatingActionButton(onPressed: _click, child: Icon(Icons.add)),
//   //       ],
//   //     )
//   //   );
//   // }
// }

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, this.title}) : super(key: key);
  final String? title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

// class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
//   bool flag = false;

//   _click() async {
//     setState(() {
//       flag = !flag;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title!),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             AnimatedOpacity(
//                 opacity: flag ? 0.1 : 1.0,
//                 duration: Duration(seconds: 3),
//                 child: Text(
//                   "消える文字",
//                   style: Theme.of(context).textTheme.headline4,
//                 )),
//             AnimatedSize(
//                 vsync: this,
//                 duration: Duration(seconds: 3),
//                 child: SizedBox(
//                     width: flag ? 50 : 200,
//                     height: flag ? 50 : 200,
//                     child: Container(color: Colors.purple))),
//             AnimatedAlign(
//                 duration: Duration(seconds: 3),
//                 alignment: flag ? Alignment.topLeft : Alignment.bottomRight,
//                 child: SizedBox(
//                     width: 50,
//                     height: 50,
//                     child: Container(color: Colors.green)))
//           ],
//         ),
//       ),
//       floatingActionButton:
//           Row(mainAxisAlignment: MainAxisAlignment.end, children: [
//         FloatingActionButton(onPressed: _click, child: Icon(Icons.add)),
//       ]),
//     );
//   }
// }

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  late AnimationController _animationControler;
  _play() async {
    setState(() {
      _animationControler.forward();
    });
  }

  _stop() async {
    setState(() {
      _animationControler.stop();
    });
  }

  _reverse() async {
    setState(() {
      _animationControler.reverse();
    });
  }

  @override
  void initState() {
    super.initState();
    _animationControler =
        AnimationController(vsync: this, duration: Duration(seconds: 3));
  }

  @override
  void dispose() {
    _animationControler.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title!),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizeTransition(
              sizeFactor: _animationControler,
              child: Center(
                  child: SizedBox(
                      width: 50,
                      height: 50,
                      child: Container(color: Colors.green))),
            ),
          ],
        ),
      ),
      floatingActionButton:
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        FloatingActionButton(
            onPressed: _play, child: Icon(Icons.arrow_forward)),
        FloatingActionButton(onPressed: _stop, child: Icon(Icons.pause)),
        FloatingActionButton(
            onPressed: _reverse, child: Icon(Icons.arrow_back)),
      ]),
    );
  }
}