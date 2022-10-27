import 'package:get/get.dart';

import 'logic.dart';

class TextToolCaseBigSmallConversionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TextToolCaseBigSmallConversionLogic());
  }
}
