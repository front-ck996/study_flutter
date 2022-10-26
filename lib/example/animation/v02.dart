import 'package:flutter/material.dart';

class ExampleAnimation_02 extends StatefulWidget {
  ExampleAnimation_02({Key? key}) : super(key: key);
  String t = '简单的例子02';
  @override
  State<ExampleAnimation_02> createState() => _ExampleAnimation_02State();
}

class _ExampleAnimation_02State extends State<ExampleAnimation_02> with  SingleTickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = AnimationController(duration: const Duration(seconds: 2), vsync: this);

    animation = Tween<double>(begin: 0, end: 300).animate(controller)
      ..addListener(() {
        // #enddocregion addListener
        setState(() {
          // The state that has changed here is the animation object’s value.
        });
        // #docregion addListener
      });
    // #enddocregion addListener
    controller.forward();


  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        height: animation.value,
        width: animation.value,
        child: const FlutterLogo(),
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

}
