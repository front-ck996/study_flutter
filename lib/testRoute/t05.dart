import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RouteTest005 extends StatelessWidget {
  const RouteTest005({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Text('123'),
    );
    return GestureDetector(
      child: Text('t0123234623'),
      onTap: (){
        // var history = Navigator.of(Get.context!);
        // var history2 = Get.rootDelegate.history;
        // print(history);
        // Get.toNamed('/t06');
      },
    );
  }
}
