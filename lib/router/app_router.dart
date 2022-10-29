import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:study_flutter/study_widget/cupertino/cupertino_accumulator/view.dart';
import 'package:study_flutter/study_widget/cupertino/view.dart';
import 'package:study_flutter/pages/home/home.dart';
import 'package:study_flutter/study_widget/material/about_dialog.dart';

import '../study_widget/cupertino/cupertino_absorb_pointer_page/view.dart';


class APPRouter {
  static String pageHome = '/home';
  static String pageMaterialAboutDialog = '/MaterialAboutDialog';
  static String pageCupertinoAbsorbPointerPage = '/cupertino/cupertinoAbsorbPointerPage';
  static String pageCupertinoAccumulatorPage = '/cupertino/cupertinoAccumulatorPage';
  static String pageCupertino = '/cupertino';
  static final toolPages = [
    GetPage(name: pageHome, title: pageHome, page: () => Home()),
    GetPage(name: pageMaterialAboutDialog, title: pageMaterialAboutDialog, page: () => CKAboutDialog()),
    GetPage(name: pageCupertino,title: pageCupertino,  page: () => CupertinoPage(),),
    GetPage(name: pageCupertinoAbsorbPointerPage,title: 'AbsorbPointer 吸收子组件的时间', page: () => CupertinoAbsorbPointerPagePage()),
    GetPage(name: pageCupertinoAccumulatorPage,title: 'Accumulator 累加器', page: () => CupertinoAccumulatorPage()),
  ];
}