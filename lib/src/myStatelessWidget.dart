import 'package:experimenting_1/my_state.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../messages.dart';

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({super.key});
  @override
  Widget build(BuildContext context) {
    final state = Provider.of<MyState>(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(state.msg),
        FloatingActionButton(onPressed: () => state.setIndex())
      ],
    );
  }
}
