import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:study_flutter/utils/Route.dart';

class RouteTest001 extends StatelessWidget {
  const RouteTest001({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Text('t02'),
      onTap: (){
        // Get.rootDelegate.toNamed('/t02');
        // Get.toNamed('/t02');
        // Get.('/t02');
        // Navigator.of(Get.context!)
        // Get.offAndToNamed('/t04/t05');
      },
    );
  }
}
