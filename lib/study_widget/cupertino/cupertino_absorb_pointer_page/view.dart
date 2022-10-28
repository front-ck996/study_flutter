import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class CupertinoAbsorbPointerPagePage extends StatelessWidget {
  CupertinoAbsorbPointerPagePage({Key? key}) : super(key: key);

  final logic = Get.put(CupertinoAbsorbPointerPageLogic());

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
    );
  }
}
