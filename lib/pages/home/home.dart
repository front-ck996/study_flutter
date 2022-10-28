import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:study_flutter/pages/components/comp_drawer_tree_menu.dart';
import 'package:study_flutter/router/app_router.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('appBar'),),
      body: Column(
        children: [
          // CompDrawerTreeMenu(wList: APPRouter.toolPages,),
          TextButton(onPressed: (){
            Get.toNamed(APPRouter.pageMaterialAboutDialog);
          }, child: Text('aboutdialog'))
        ],
      )
    );
  }
}
