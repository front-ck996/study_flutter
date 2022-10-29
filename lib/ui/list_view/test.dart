import 'package:flutter/material.dart';
import 'package:study_flutter/ui/list_view/view.dart';

class UIListViewTest extends StatefulWidget {
  const UIListViewTest({Key? key}) : super(key: key);

  @override
  State<UIListViewTest> createState() => _UIListViewTestState();
}

class _UIListViewTestState extends State<UIListViewTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: Colors.blue,
        child: UIListView(
          len: 100,
        ),
      ),
    );
  }
}
