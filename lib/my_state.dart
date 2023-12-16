import 'package:flutter/material.dart';

import 'messages.dart';
class MyState with ChangeNotifier {
  int index = 0;
  String get msg => msgs[index];
  void setIndex () {
    index ++;
    if (index >= msgs.length) {
      index = 0;
    }
    notifyListeners();
  }
}