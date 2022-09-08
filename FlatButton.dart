import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _value = "Flat Button";

  void _onPressed() {
    setState(() {
      _value = "Flat Button Clicked";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("My App"),
      ),
      body: Center(
        child: new Container(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              new Text(_value),
              new FlatButton(
                onPressed: _onPressed,
                child: new Text("Click Flat Button"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
