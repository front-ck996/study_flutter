import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../components/AppBar.dart';

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
            ),))
          ],
        ),
      ),
      body: Container(
        child: TextButton(
          onPressed: (){
            print('click');
            // Get.dialog(Text('124'));
            ScaffoldKey.currentState!.openDrawer();
          },
          child: Text('按钮'),
        ),
      ),
    );
  }
}
