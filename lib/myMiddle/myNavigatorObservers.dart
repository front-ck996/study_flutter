import 'package:flutter/material.dart';

class myNavigatorObservers extends NavigatorObserver{
  NavigatorState? get navigator => _navigator;
  NavigatorState? _navigator;

  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    print('route$route');
  }

  void didRemove(Route<dynamic> route, Route<dynamic>? previousRoute) { }


  void didReplace({ Route<dynamic>? newRoute, Route<dynamic>? oldRoute }) { }


  void didStartUserGesture(Route<dynamic> route, Route<dynamic>? previousRoute) { }


  void didStopUserGesture() { }
}