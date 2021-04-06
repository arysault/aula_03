import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main(List<String> args) {
  runApp(
    MaterialApp(
      home: CounterScreen(),
    ),
  );
}

class CounterScreen extends StatefulWidget {
  @override
  _CounterScreenState createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;

  // ignore: missing_return
  void increasedPressedButtom() {
    setState(() {
      counter++;
    });
  }

  void decreasedPressedButtom() {
    setState(() {
      counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "My Counter",
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "You have pressed this buttom this many times:",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          Center(
            child: Text(
              "$counter",
              style: TextStyle(
                fontSize: 34,
              ),
            ),
          )
        ],
      ),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FloatingActionButton(
            onPressed: () {
              decreasedPressedButtom();
            },
            child: Icon(Icons.remove),
          ),
          SizedBox(
            width: 5,
          ),
          FloatingActionButton(
            onPressed: () {
              increasedPressedButtom();
            },
            child: Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
