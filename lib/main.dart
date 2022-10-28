import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:study_flutter/router/app_router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      // 设计稿中设备的尺寸
        designSize: const Size(750, 1334),
        // 是否根据宽度/高度中的最小值适配文字
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            // key: MainAppkey,
            initialRoute: APPRouter.pageHome,
            getPages: APPRouter.toolPages,
            defaultTransition: Transition.leftToRight,
          );
        }
    );
  }
}
