import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:study_flutter/router/app_router.dart';
import 'package:study_flutter/untils/GlobalNav.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      // 设计稿中设备的尺寸
      designSize: const Size(360, 690),
      // 是否根据宽度/高度中的最小值适配文字
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp.router(
          getPages: APPRouter.toolPages,
          defaultTransition: Transition.leftToRight,
          routeInformationParser: Get.put(GetInformationParser(
              initialRoute: APPRouter.pageHome
          )),
          routerDelegate: Get.put(GetDelegate(
              backButtonPopMode: PopMode.History,
              preventDuplicateHandlingMode: PreventDuplicateHandlingMode.ReorderRoutes
          )),
        );
      },
    );
  }
}