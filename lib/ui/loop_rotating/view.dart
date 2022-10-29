import 'dart:math';
import 'package:flutter/material.dart';

class MaterialLoopRotating extends StatelessWidget {
  const MaterialLoopRotating({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(angle: -pi/2, child: Icon(Icons.add_circle),);
  }
}
