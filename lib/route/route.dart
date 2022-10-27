import 'package:get/get.dart';
import 'package:study_flutter/pages/home/binding.dart';
import 'package:study_flutter/pages/textTool/text_tool_case_big_small_conversion/binding.dart';
import 'package:study_flutter/pages/textTool/text_tool_case_big_small_conversion/view.dart';
import '../pages/home/view.dart';

class RouteInfo {
  String path;
  GetPage info;
  RouteInfo({required this.path , required this.info});
}

class ExampleRoute {

  /// 首页
  static RouteInfo home = RouteInfo(path: '/', info: GetPage(name: "/", page: () => HomePage(), binding: HomeBinding()));

  /// 文字工具
  /// 英文字母大小写转换
  static RouteInfo textToolCaseBigSmallConversion = RouteInfo(path: '/textToolCaseBigSmallConversion', info:  GetPage(name: "/textToolCaseBigSmallConversion", page: () => TextToolCaseBigSmallConversionPage(), binding: TextToolCaseBigSmallConversionBinding()));

  static final toolPages = [
    home.info,
  ];
}
