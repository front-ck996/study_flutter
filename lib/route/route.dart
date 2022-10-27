import 'package:get/get.dart';
import 'package:study_flutter/pages/home/binding.dart';
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
  static RouteInfo textToolCaseBigSmallConversion = RouteInfo(path: '/textToolCaseBigSmallConversion', info:  GetPage(name: "/", page: () => HomePage(), binding: HomeBinding()));

  static final toolPages = [
    home.info,
  ];
}
