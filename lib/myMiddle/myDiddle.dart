import 'package:flutter/material.dart';
import 'package:get/get.dart';

class myDiddle extends GetMiddleware{

  // 重定向
  @override
  RouteSettings? redirect(String? route) {
    // return ;
    print(route);
  }

  // 创建内容之前调用
  @override
  GetPage? onPageCalled(GetPage? page) => page;

  // GETx 的数据绑定之后执行
  @override
  List<Bindings>? onBindingsStart(List<Bindings>? bindings) => bindings;

  /// 页面数据绑定之后
  @override
  GetPageBuilder? onPageBuildStart(GetPageBuilder? page) => page;


  @override
  Widget onPageBuilt(Widget page) => page;

  @override
  void onPageDispose() {}
}