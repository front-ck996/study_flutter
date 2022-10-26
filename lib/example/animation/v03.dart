import 'package:flutter/material.dart';


class _animatedLogo extends AnimatedWidget{
 const _animatedLogo({super.key, required Animation<double> animation}): super(listenable: animation);

  @override
  Widget build(BuildContext context){
    final animtion = listenable as Animation<double>;
    return Center(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        height: animtion.value,
        width: animtion.value,
        child: const FlutterLogo(),
      ),
    );
  }
}


class ExampleAnimation_03 extends StatefulWidget {
  ExampleAnimation_03({Key? key}) : super(key: key);
  String t = '简单的例子03';

  @override
  State<ExampleAnimation_03> createState() => _ExampleAnimation_03State();
}

class _ExampleAnimation_03State extends State<ExampleAnimation_03> with  SingleTickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = AnimationController(duration: const Duration(seconds: 2), vsync: this);

    animation = Tween<double>(begin: 0, end: 300).animate(controller)..addListener(() {
    });
    controller.forward();
  }
  @override
  Widget build(BuildContext context) => _animatedLogo(animation: animation);

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

}
