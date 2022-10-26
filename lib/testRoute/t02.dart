import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:study_flutter/testRoute/t04.dart';
import 'package:study_flutter/testRoute/t05.dart';
class RouteTest002 extends StatelessWidget {
  const RouteTest002({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Text('t03'),
      onTap: () async {
        Get.rootDelegate.history.addAll([
          GetNavConfig(currentTreeBranch: [GetPage(name: '/t04', page:  () => RouteTest004())], location: '/t04', state: {}),
          GetNavConfig(currentTreeBranch: [GetPage(name: '/t05', page:  () => RouteTest005())], location: '/t05', state: {}),
        ]);
        Get.rootDelegate.refresh();
        var history =  Get.rootDelegate.history;
        Get.rootDelegate.history.removeWhere((element) {
          return  element.location ==  '/t02';
        });

      },
    );
  }
}
