import 'package:flutter/material.dart';
import 'package:get/get.dart';
class RouteTest004 extends StatelessWidget {
  const RouteTest004({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Text('t05'),
      onTap: (){
        Get.rootDelegate.toNamed('/t05');
      },
    );
  }
}
