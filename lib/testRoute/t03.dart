import 'package:flutter/material.dart';
import 'package:get/get.dart';
class RouteTest003 extends StatelessWidget {
  const RouteTest003({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Text('t04'),
      onTap: (){
        Get.toNamed('/t04');
      },
    );
  }
}
