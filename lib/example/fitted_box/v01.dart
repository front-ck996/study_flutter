import 'package:flutter/material.dart';

class ExampleFittedBox extends StatefulWidget {
  const ExampleFittedBox({Key? key}) : super(key: key);

  @override
  State<ExampleFittedBox> createState() => _ExampleFittedBoxState();
}

class _ExampleFittedBoxState extends State<ExampleFittedBox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      // ClipRect(child:
      Container(
        // padding: EdgeInsets.all(5),
        height: 50,
        width: 50,
        color: Colors.red,
       child: Container(
            width: 10,
            height: 10,
            color: Colors.blue,
          ),),);
  }
}