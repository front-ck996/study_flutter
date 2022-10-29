import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class CupertinoAbsorbPointerPagePage extends StatelessWidget {
  CupertinoAbsorbPointerPagePage({Key? key}) : super(key: key);

  final logic = Get.put(CupertinoAbsorbPointerPageLogic());

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: <Widget>[
        SizedBox(
          width: 200.0,
          height: 100.0,
          child: ElevatedButton(
            onPressed: () {
              print('ElevatedButton');
            },
            child: null,
          ),
        ),
        SizedBox(
          width: 100.0,
          height: 200.0,
          child: AbsorbPointer(
            child: GestureDetector(
              onTap: (){
                print('click');
              },
              child: Container(
                color: Colors.red,
                child: Container(
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
