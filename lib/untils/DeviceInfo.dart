import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:device_info_plus/device_info_plus.dart';
// https://pub.dev/packages/device_info_plus/example
class DeviceInfo {
  static final DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();
  static getUniqueID() async{
    WebBrowserInfo deviceData = await deviceInfoPlugin.webBrowserInfo;
    if(kIsWeb){

    }else{
      if (Platform.isAndroid){

      }else if(Platform.isIOS){

      }else if(Platform.isLinux){

      }else if(Platform.isMacOS){

      }else if(Platform.isWindows){

      }
    }
  }
  static _webID() async{
    var deviceData = await deviceInfoPlugin.webBrowserInfo;

  }
  static _androidID(){

  }
}
