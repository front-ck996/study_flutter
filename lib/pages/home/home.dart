import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:study_flutter/router/app_router.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('1233'),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: APPRouter.toolPages.map((e) {
          return GestureDetector(
            child: Text(e.title!),
            onTap: (){
              Get.toNamed(e.name);
            },
          );
        }).toList(),
      ),
    );
  }
}
