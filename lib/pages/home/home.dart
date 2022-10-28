import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:study_flutter/router/app_router.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('1233'),),
      body: TextButton(
        onPressed: (){
          Get.toNamed(APPRouter.pageMaterialAboutDialog);
        },
        child: Text('12'),
      ),
    );
  }
}
