import 'package:flutter/material.dart';

class ToolAppBar extends AppBar {
  ToolAppBar({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return AppBar(title: Container(
      child: Text('hello', style: TextStyle(color: Colors.red), ),
    ),);
  }
}
