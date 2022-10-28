import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:study_flutter/router/app_router.dart';

import 'logic.dart';

class CupertinoPage extends StatelessWidget {
  CupertinoPage({Key? key}) : super(key: key);

  final logic = Get.put(CupertinoLogic());

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: TextButton(
        child: Text('124'),
        onPressed: (){
          Get.toNamed(APPRouter.pageCupertinoAbsorbPointerPage);
        },
      ),
    );
  }
}
