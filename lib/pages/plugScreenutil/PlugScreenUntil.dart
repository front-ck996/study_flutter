import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PlugScreenUntil extends StatefulWidget {
  const PlugScreenUntil({Key? key}) : super(key: key);

  @override
  State<PlugScreenUntil> createState() => _PlugScreenUntilState();
}

class _PlugScreenUntilState extends State<PlugScreenUntil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: 360.w,
            width: 360.w,
            color: Colors.cyan,
          ),
          Text('124', style: TextStyle( fontSize: 15.sp ),)
        ],
      )
    );
  }
}
