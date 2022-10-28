import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:study_flutter/pages/home/home.dart';
import 'package:study_flutter/study_widget/material/about_dialog.dart';


class APPRouter {
  static String pageHome = '/home';
  static String pageMaterialAboutDialog = '/MaterialAboutDialog';
  static final toolPages = [

    GetPage(name: pageHome, title: pageHome, page: () => Home()),
    GetPage(name: pageMaterialAboutDialog, title: pageMaterialAboutDialog, page: () => CKAboutDialog())
    // GetPage(name: pageHome, title: 'home', page: () => Home()),
    // GetPage(name: '/material', title: 'material', page: () => SAboutDialogPage(),
    //   children: [
    //     GetPage(name: pageMaterialAboutDialog, title: pageMaterialAboutDialog, page: () => SAboutDialogPage())
    //   ]
    // ),
  ];
}