import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:study_flutter/route/route.dart';
import 'dart:math';
import '../components/AppBar.dart';

import '../components/DrawerTreeMenu.dart';
import 'logic.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final logic = Get.find<HomeLogic>();
    final ScaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: ScaffoldKey,
      appBar: AppBar(
        title: Container(
          child: Text('hello'),
        ),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(child: Container(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Icon(Icons.construction_outlined, size: 90,),
                    Text('一个简约的 android ios  web 工具箱'),
                  ]
            ),)),
            Container(child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('文字工具'),
                Transform.rotate(
                  angle: -pi/2,
                  child: Icon(Icons.arrow_back_ios_new,size: 15,),
                ),
              ],
            ),)
          ],
        ),
      ),
      body: Container(
        child: Column(
          children: [
            TextButton(
              onPressed: (){
                print('click');
              },
              child: Text('按钮'),

            ),
            DrawerTreeMenu(wList: ExampleRoute.toolPages[0].children)
          ],
        )
      ),
    );
  }
}
