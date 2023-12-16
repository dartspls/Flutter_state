import 'package:flutter/material.dart';
import '../messages.dart';

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int msgIndex = 0;

  void _incrementIndex() {
    setState(() {
      msgIndex++;
      if (msgIndex >= msgs.length) {
        msgIndex = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(msgs[msgIndex]),
        FloatingActionButton(
            onPressed: _incrementIndex, tooltip: 'Next message'),
      ],
    );
  }
}
