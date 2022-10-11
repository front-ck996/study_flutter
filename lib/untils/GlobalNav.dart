import 'package:flutter/material.dart';
class AppGlobalKey {
  static GlobalKey<NavigatorState> navigatorKey=GlobalKey();

  // 获取当前上下文
  static getContext(){
    return navigatorKey.currentContext;
  }
}
