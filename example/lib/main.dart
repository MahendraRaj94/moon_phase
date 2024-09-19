import 'package:flutter/material.dart';
import 'package:moon_phase/moon_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('MoonWidget example app'),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Wrap(
              spacing: 10,
              runSpacing: 10,
              direction: Axis.horizontal,
              children: _moonPhases(),
            ),
          ),
        ),
      ),
    );
  }

  _moonPhases() {
    var _list = <Widget>[];
    for (int i = 0; i < 30 * (24 / 12); i++) {
      _list.add(
        MoonWidget(
          date: DateTime.now().add(Duration(hours: i * 12)),
          resolution: 64,
          size: 48,
          moonColor: Color(0xffF6F1D5),
          earthshineColor: Color(0xff4B4A43),
        ),
      );
    }
    return _list;
  }
}
