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
// <<<<<<< HEAD
        // Get.rootDelegate.toNamed('/t02');
// =======
        Get.rootDelegate.toNamed('/t02');
// >>>>>>> 623035539629fc2d9a95bd1fcf3fb6084a3d0d69
        // Get.toNamed('/t02');
        // Get.('/t02');
        // Navigator.of(Get.context!)
        // Get.offAndToNamed('/t04/t05');
      },
    );
  }
}
