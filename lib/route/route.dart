import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:study_flutter/pages/home/binding.dart';
import 'package:study_flutter/pages/textTool/text_tool_case_big_small_conversion/binding.dart';
import 'package:study_flutter/pages/textTool/text_tool_case_big_small_conversion/view.dart';
import 'package:uuid/uuid.dart';
import '../pages/home/view.dart';


class RouteInfo {
  String path;
  GetPage info;
  String? name;
  RouteInfo({required this.path , required this.info, this.name});
}

class ExampleRoute {

  static String pageHome = '/';
  static String pageTextTool = '/textTool';
  static String pageTextToolCaseBigSmallConversion = '/textTool/CaseBigSmallConversion';
  static final toolPages = [
    // home.info,
    GetPage(name: pageHome, page: () => HomePage(), binding: HomeBinding(),
      children: [
        GetPage(title: '文字工具', name: pageTextTool, page: () => Container(),
          children: [
            GetPage(title: '大小写转换1' ,name:pageTextToolCaseBigSmallConversion, page: () => TextToolCaseBigSmallConversionPage(), binding: TextToolCaseBigSmallConversionBinding()),
            GetPage(title: '大小写转换2' ,name:pageTextToolCaseBigSmallConversion, page: () => TextToolCaseBigSmallConversionPage(), binding: TextToolCaseBigSmallConversionBinding()),
            GetPage(title: '大小写转换3' ,name:pageTextToolCaseBigSmallConversion, page: () => TextToolCaseBigSmallConversionPage(), binding: TextToolCaseBigSmallConversionBinding()),
          ]
        )
      ]
    ),
  ];
}
