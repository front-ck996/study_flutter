import 'package:flutter/material.dart';

class UIExpanded extends StatefulWidget {
  const UIExpanded({Key? key}) : super(key: key);

  @override
  State<UIExpanded> createState() => _UIExpandedState();
}

class _UIExpandedState extends State<UIExpanded> {
  final GlobalKey<ScaffoldState> _scaffoldKey =  GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text('商品列表'),
      ),
      body: Expanded(
        flex: 1,
        child: InkWell(
          onTap: (){
            _scaffoldKey.currentState?.openEndDrawer();
          },
          child: Text('赛选', textAlign:  TextAlign.center),
        ),
      ),
    );
  }
}
