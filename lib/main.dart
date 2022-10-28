import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:study_flutter/router/app_router.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: APPRouter.toolPages,

      initialRoute: APPRouter.pageHome,

      locale: const Locale('zh', 'cn'),

      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate, // 指定本地化的字符串
        GlobalCupertinoLocalizations.delegate, // 对应的Cupertino风格
        GlobalWidgetsLocalizations.delegate // 指定默认的文本排列方向, 由左到右或由右到
      ],
      supportedLocales:const [
         Locale("zh", "CH"),
        // const Locale("en","US"),
      ],

    );
  }
}