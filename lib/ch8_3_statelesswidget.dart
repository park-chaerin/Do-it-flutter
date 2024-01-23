import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool enabled = false;
  String stateText = "disable";

  void changeCheck() {
    setState(() {
      if (enabled) {
        stateText = "disable";
        enabled = false;
      } else {
        stateText = "enable";
        enabled = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Stateful Test'),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: (enabled
                    ? Icon(
                  Icons.check_box,
                  size: 20,
                )
                    : Icon(
                  Icons.check_box_outline_blank,
                  size: 20,
                )),
                color: Colors.yellow,
                onPressed: changeCheck,
              ),
              Container(
                  padding: EdgeInsets.only(left: 16),
                  child: Text(
                    '$stateText',
                    style:
                    TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
