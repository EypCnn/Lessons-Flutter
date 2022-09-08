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
  int _value = 0;

  void _add() {
    setState(() {
      _value++;
    });
  }

  void _subtract() {
    setState(() {
      _value--;
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
              new Text("Icon Button Value: ${_value}"),
              new IconButton(
                onPressed: _add,
                icon: new Icon(Icons.add),
              ),
              new IconButton(
                onPressed: _subtract,
                icon: new Icon(Icons.remove),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
