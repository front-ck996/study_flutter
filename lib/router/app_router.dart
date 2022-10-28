import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:study_flutter/pages/home/home.dart';

class APPRouter {
  static String pageHome = '/';
  static final toolPages = [
    GetPage(name: pageHome, page: () => Home())
  ];
}