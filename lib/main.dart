import 'package:flutter/material.dart';
import 'package:study_flutter/router/Router.dart';
import 'package:study_flutter/untils/GlobalNav.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      navigatorKey: CustomGlobalKey.navigatorKey,
      onGenerateRoute:(RouteSettings settings) => CustomRouter.onGenerateRoute(settings),

      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        children: [
          GestureDetector(
            child:Text('跳转到page1',),
            onTap: (){
              Navigator.pushNamed(context, '/form',arguments: { "id":20 });
            },
          ),
          GestureDetector(
            child:Text('测试无 context 跳转',),
            onTap: (){
              CustomRouter.push(route: '/form', arguments: {'id':30});
            },
          ),
        ],
      )
    );
  }
}
