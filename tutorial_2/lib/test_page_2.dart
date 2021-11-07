import "package:flutter/material.dart";

class TestPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Test2"),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          TextButton(
            onPressed: () => {
              Navigator.of(context).pushNamed("/test3")
              // Navigator.of(context)
              // .push(MaterialPageRoute(builder: (context) {
              //   return TestPage3();
              // }))
            },
            child: Text("Next", style: TextStyle(fontSize: 40))
          ),
          TextButton(
            onPressed: () => {
              Navigator.of(context).pop()
            },
            child: Text("Back", style: TextStyle(fontSize: 40))
          )
        ])
      )
    );
  }
}
