import 'package:flutter/material.dart';
import 'package:study_flutter/router/Router.dart';

class FormPage extends StatelessWidget {
  final Map<dynamic,dynamic>? arguments;

  const FormPage({this.arguments});

  @override
  Widget build(BuildContext context) {
    print(this.arguments);
    return Scaffold(
        appBar: AppBar(
          title: Text("搜索"),
        ),
        body:ListView(
          children: [
            Text("我是一个表单页面${this.arguments?['id']}"),
            GestureDetector(child: Text("返回"),
              onTap: (){
                CustomRouter.pop();
              },
            )
          ],
        )
    );
  }
}
