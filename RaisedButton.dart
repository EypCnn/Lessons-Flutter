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
  String _value = "Raised Button";

  void _onPressed() {
    setState(() {
      _value = "Raised Button Clicked";
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
              new RaisedButton(
                onPressed: _onPressed,
                child: new Text("Click Raised Button"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
