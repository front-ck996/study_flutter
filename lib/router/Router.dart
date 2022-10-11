import 'package:flutter/material.dart';
import 'package:study_flutter/pages/page1/Page1.dart';

class CustomRouter extends StatelessWidget {
  const CustomRouter({Key? key}) : super(key: key);

  // 定义路由表
  static final routers = {
    '/form': (context, {arguments}) => FormPage(arguments: arguments),
  };

  // 跳转
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

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
