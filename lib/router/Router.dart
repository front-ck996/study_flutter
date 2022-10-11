import 'package:flutter/material.dart';
import 'package:study_flutter/pages/page1/Page1.dart';
import 'package:study_flutter/pages/plugScreenutil/PlugScreenUntil.dart';
import 'package:study_flutter/untils/GlobalNav.dart';

class CustomRouter extends StatelessWidget {
  const CustomRouter({Key? key}) : super(key: key);

  // 定义路由表
  static final routers = {
    '/form': (context, {arguments}) => FormPage(arguments: arguments),
    '/plug-screen-until': (context) => const PlugScreenUntil(),
  };

  // 路由中间处理
  static onGenerateRoute(RouteSettings settings){
    final String? name = settings.name;
    final Function pageContentBuilder = CustomRouter.routers[name] as Function;
    if(settings.arguments != null){
      final Route route = MaterialPageRoute(builder: (context) => pageContentBuilder(context, arguments: settings.arguments));
      return route;
    }else{
      return MaterialPageRoute(builder: (context) => pageContentBuilder(context));
    }
  }

  // push
  static push({context, route, arguments}){
    context ??= CustomGlobalKey.getContext();
    Navigator.pushNamed(context, route, arguments: arguments);
  }
  // pop
  static pop({context}){
    context ??= CustomGlobalKey.getContext();
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
