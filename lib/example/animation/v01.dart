import 'package:flutter/material.dart';

class ExampleAnimation_01 extends StatefulWidget {
  ExampleAnimation_01({Key? key}) : super(key: key);
  String t = '简单的例子';
  @override
  State<ExampleAnimation_01> createState() => _ExampleAnimation_01State();
}

class _ExampleAnimation_01State extends State<ExampleAnimation_01> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        height: 300,
        width: 300,
        child: const FlutterLogo(),
      ),
    );
  }
}
