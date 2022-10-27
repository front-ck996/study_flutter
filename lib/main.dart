import 'package:flutter/material.dart';
import 'package:study_flutter/myMiddle/myDiddle.dart';
import 'package:study_flutter/myMiddle/myNavigatorObservers.dart';

import 'package:study_flutter/route/route.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  static GlobalKey movieAppKey = GlobalKey();
  final RouteObserver<PageRoute> routeObserver = RouteObserver<PageRoute>();

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp.router(
      getPages: ExampleRoute.pages,
      defaultTransition: Transition.leftToRight,
      routeInformationParser: Get.put(GetInformationParser(
        initialRoute: '/t01'
      )),
      routerDelegate: Get.put(GetDelegate(
        backButtonPopMode: PopMode.History,
        preventDuplicateHandlingMode: PreventDuplicateHandlingMode.ReorderRoutes
      )),
    );
  }
}