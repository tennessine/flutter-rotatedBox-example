import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double _value;
  int _turns;

  @override
  void initState() {
    _value = 0.0;
    _turns = 0;
    super.initState();
  }

  void onChange(double value) {
    setState(() {
      _value = value;
      _turns = value.toInt();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          children: <Widget>[
            Slider(value: _value, onChanged: onChange, min: 0, max: 4,),
            RotatedBox(quarterTurns: _turns, child: Text('Hi there!'),)
          ],
        ),
      ),
    );
  }
}
