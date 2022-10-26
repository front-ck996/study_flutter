import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:study_flutter/testRoute/t01.dart';
import 'package:study_flutter/testRoute/t02.dart';
import 'package:study_flutter/testRoute/t03.dart';
import 'package:study_flutter/testRoute/t04.dart';
import 'package:study_flutter/testRoute/t05.dart';
import 'package:uuid/uuid.dart';

import '../example/fitted_box/v01.dart';
import '../example/animation/v01.dart';
import '../example/animation/v02.dart';
import '../example/animation/v03.dart';
import '../example/animation/v04.dart';
import '../example/animation/v05.dart';
import '../example/dialog/v01.dart';

class ExampleRoute {

  static final pages = [
    GetPage(name: '/'+Uuid().v4(), title: ExampleAnimation_01().t, page: () => ExampleAnimation_01()),
    GetPage(name: '/'+Uuid().v4(), title: ExampleAnimation_02().t, page: () => ExampleAnimation_02()),
    GetPage(name: '/'+Uuid().v4(), title: ExampleAnimation_03().t, page: () => ExampleAnimation_03()),
    GetPage(name: '/'+Uuid().v4(), title: ExampleAnimation_04().t, page: () => ExampleAnimation_04()),
    GetPage(name: '/'+Uuid().v4(), title: ExampleAnimation_05().t, page: () => ExampleAnimation_05()),
    GetPage(name: '/'+Uuid().v4(), page: () => ExampleDialog_01()),
    GetPage(name: '/t01', page: () => RouteTest001(), participatesInRootNavigator: true),
    GetPage(name: '/t02', page: () => RouteTest002(),),
    GetPage(name: '/t03', page: () => RouteTest003(),),
    GetPage(name: '/t04', page: () => RouteTest004(),),
    GetPage(name: '/t05', page: () => RouteTest005(),)
  ];

  Widget generateRouteWidget() {
    List<Widget> list = [];
    for (var value in pages) {
      list.add(Container(
        child: GestureDetector(
          child: Text(value.title ?? value.name),
          onTap: () {
            Get.toNamed(value.name);
          },
        ),
      ));
    }

    return Column(
      children: list,
    );
  }
}
