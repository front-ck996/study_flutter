import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class CupertinoAccumulatorPage extends StatelessWidget {
  CupertinoAccumulatorPage({Key? key}) : super(key: key);

  final logic = Get.put(CupertinoAccumulatorLogic());
  Accumulator accumulator = Accumulator();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('${accumulator.value}'),
        TextButton(onPressed: (){
          accumulator.increment(2);
          print(accumulator.value);
        }, child: Text('click'))
      ],
    );
  }
}
