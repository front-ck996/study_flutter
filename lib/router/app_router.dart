import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:study_flutter/pages/home/home.dart';
import 'package:study_flutter/pages/widget/material/s_about_dialog/view.dart';

class APPRouter {
  static String pageHome = '/home';
  static String pageMaterialAboutDialog = '/MaterialAboutDialog';
  static final toolPages = [
    GetPage(name: pageMaterialAboutDialog, title: pageMaterialAboutDialog, page: () => SAboutDialogPage())
    // GetPage(name: pageHome, title: 'home', page: () => Home()),
    // GetPage(name: '/material', title: 'material', page: () => SAboutDialogPage(),
    //   children: [
    //     GetPage(name: pageMaterialAboutDialog, title: pageMaterialAboutDialog, page: () => SAboutDialogPage())
    //   ]
    // ),
  ];
}