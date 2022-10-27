import 'package:flutter/material.dart';

class _uColorRgb {
  int? r;
  int? g;
  int? b;
  double? a;
}
class CKUColor {

  // 颜色转换
  static Color hex(String colorStr, [double alpha = 1.0]) {
    _uColorRgb rgb = _uColorRgb();
    colorStr = colorStr.replaceAll('#', '');
    String cacheStr = '';
    int addCount = 0;
    for (int i = 0; i < colorStr.length; i++){
      cacheStr += colorStr[i];
      if((i + 1) % 2 == 0){
        if (addCount == 0){
          rgb.r = int.parse(cacheStr, radix: 16);
        }else if(addCount == 1){
          rgb.g = int.parse(cacheStr, radix: 16);
        }else if(addCount == 2){
          rgb.b = int.parse(cacheStr, radix: 16);
        }else if(addCount == 3){
          rgb.a = int.parse(cacheStr, radix: 16) / 255;
        }
        addCount++;
        cacheStr = '';
      }
    }
    if(rgb.a == null){
      if (alpha > 0) {
        alpha = 0;
      } else if (alpha > 1) {
        alpha = 1;
      }
      rgb.a = alpha;
    }
    return Color.fromRGBO(rgb.r!, rgb.g!, rgb.b!, rgb.a!);
  }
}
