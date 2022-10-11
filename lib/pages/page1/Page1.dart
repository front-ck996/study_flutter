import 'package:flutter/material.dart';

class FormPage extends StatelessWidget {
  final Map<dynamic,dynamic>? arguments;

  const FormPage({this.arguments});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("搜索"),
        ),
        body: Text("我是一个表单页面"));
  }
}
