import 'package:get/get.dart';
/// 基于 getx 封装的路由操作
/// url:https://pub.dev/packages/get


class CKRoute{


  static Future<T> toNamed<T>(String page,dynamic arguments){
   return Get.rootDelegate.toNamed(page,arguments: arguments);
  }

  static Future<GetNavConfig?>  back(){
    return Get.rootDelegate.popHistory();
  }

  static offAndToNamed(String page,dynamic arguments){
    Get.rootDelegate.offAndToNamed(page,arguments: arguments);
  }

  /// 重置历史记录并添加最新的几条
  cleanHistoryAndPush(List<GetNavConfig> historyList){
    Get.rootDelegate.history.clear();
    Get.rootDelegate.history.addAll(historyList);
    Get.rootDelegate.refresh();

  // GetNavConfig(currentTreeBranch: [GetPage(name: '/t04', page:  () => RouteTest004())], location: '/t04', state: {}),
  }

  /// 不建议直接在外部操作 history 可能会导致混乱
  getHistoryHandle(){
    return Get.rootDelegate.history;
  }

  closeHistory(List<String> closeList){
    Get.rootDelegate.history.removeWhere((element) {
      return closeList.contains(element.location);
    });
  }
  closeHistoryLast(){
    Get.rootDelegate.history.removeLast();
  }
  removeRangeHistory(int start,int  end){
    Get.rootDelegate.history.removeRange(start, end);
  }
  refresh(){
    Get.rootDelegate.refresh();
  }
}