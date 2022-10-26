import 'package:flutter/material.dart';

class _test_inside_widget extends StatelessWidget {
  _test_inside_widget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: const FlutterLogo(),
    );
  }
}

// #docregion GrowTransition
class GrowTransition extends StatelessWidget {
  const GrowTransition(
      {required this.child, required this.animation, super.key});

  final Widget child;
  final Animation<double> animation;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedBuilder(
        animation: animation,
        builder: (context, child) {
          return SizedBox(
            height: animation.value,
            width: animation.value,
            child: child,
          );
        },
        child: child,
      ),
    );
  }
}
// #enddocregion GrowTransition

class ExampleAnimation_05 extends StatefulWidget {
  ExampleAnimation_05({super.key});
  String t = '封装进组件';
  @override
  State<ExampleAnimation_05> createState() => _ExampleAnimation_05State();
}

// #docregion print-state
class _ExampleAnimation_05State extends State<ExampleAnimation_05> with SingleTickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(duration: const Duration(seconds: 2), vsync: this);
    animation = Tween<double>(begin: 0, end: 300).animate(controller);
    controller.forward();
  }
  // #enddocregion print-state

  @override
  Widget build(BuildContext context) {
    return GrowTransition(
      animation: animation,
      child: _test_inside_widget(),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
// #docregion print-state
}