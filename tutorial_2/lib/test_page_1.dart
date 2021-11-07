import "package:flutter/material.dart";

class TestPage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Test1"),
      ),
      body: Center(
        child: TextButton(
          onPressed: () => {
            Navigator.of(context).pushNamed("/test2")
            // Navigator.of(context)
            // .push(MaterialPageRoute(builder: (context) {
            //   return TestPage2();
            // }))
          },
          child: Text("Next", style: TextStyle(fontSize: 40))
        )
      )
    );
  }
}