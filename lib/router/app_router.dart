import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:study_flutter/study_widget/cupertino/cupertino_accumulator/view.dart';
import 'package:study_flutter/study_widget/cupertino/view.dart';
import 'package:study_flutter/pages/home/home.dart';
import 'package:study_flutter/study_widget/material/about_dialog.dart';
import 'package:study_flutter/study_widget/material/async_ui.dart';
import 'package:study_flutter/ui/list_view/test.dart';
import 'package:study_flutter/ui/loop_rotating/view.dart';

import '../study_widget/cupertino/cupertino_absorb_pointer_page/view.dart';


class APPRouter {
  static String pageHome = '/home';
  static String pageMaterialAboutDialog = '/MaterialAboutDialog';
  static String pageCupertinoAbsorbPointerPage = '/cupertino/cupertinoAbsorbPointerPage';
  static String pageCupertinoAccumulatorPage = '/cupertino/cupertinoAccumulatorPage';
  static String pageCupertino = '/cupertino';
  static String pageUIListView = '/ui_listView';
  static String pageMaterial = '/material';
  static String pageAsyncUI = '/material/async_ui';
  static String pageMaterialLoopRotating = '/material/loopRotating';

  static final toolPages = [
    GetPage(name: pageHome, title: pageHome, page: () => Home()),
    GetPage(name: pageMaterialAboutDialog, title: pageMaterialAboutDialog, page: () => CKAboutDialog()),
    GetPage(name: pageCupertino,title: pageCupertino,  page: () => CupertinoPage(),),
    GetPage(name: pageCupertinoAbsorbPointerPage,title: 'AbsorbPointer 吸收子组件的时间', page: () => CupertinoAbsorbPointerPagePage()),
    GetPage(name: pageCupertinoAccumulatorPage,title: 'Accumulator 累加器', page: () => CupertinoAccumulatorPage()),
    GetPage(name: pageUIListView,title: 'UI ListView', page: () => UIListViewTest()),
    GetPage(name: pageMaterial, title: pageMaterial, page: () => Container()),
    GetPage(name: pageAsyncUI,title: pageAsyncUI ,page: () => MaterialAsyncUI()),
    GetPage(name: pageMaterialLoopRotating,title: pageMaterialLoopRotating ,page: () => MaterialLoopRotating()),

  ];
}