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
          pageSize: 10,
          onLoadData: (index) async {
            if(index > 2){
              return [];
            }
            await await Future.delayed(Duration(seconds: 1));
            return [{},{},{},{}];
          },
          buildItem: (info){
            return Container(
              height: 50,
              margin: const EdgeInsets.only(top: 10, bottom: 10),
              color: Colors.red,
              child: Text('123'),
            );
          },
        ),
      ),
    );
  }
}
