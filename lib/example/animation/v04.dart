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


class ExampleAnimation_04 extends StatefulWidget {
  ExampleAnimation_04({Key? key}) : super(key: key);
  String t = '利用状态-进行循环播放';
  @override
  State<ExampleAnimation_04> createState() => _ExampleAnimation_04State();
}

class _ExampleAnimation_04State extends State<ExampleAnimation_04> with  SingleTickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = AnimationController(duration: const Duration(seconds: 2), vsync: this);

    animation = Tween<double>(begin: 0, end: 300).animate(controller)..addStatusListener((status) {
      if (status == AnimationStatus.completed){
        // 倒叙
        controller.reverse();
      }else if(status == AnimationStatus.dismissed){
        // 正序
        controller.forward();
      }
    })..addStatusListener((status) => print('$status'));
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
