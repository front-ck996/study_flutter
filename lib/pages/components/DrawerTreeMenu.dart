import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DrawerTreeMenu extends StatefulWidget {
  List<GetPage> wList;

  DrawerTreeMenu({Key? key, required this.wList}) : super(key: key);

  @override
  State<DrawerTreeMenu> createState() => _DrawerTreeMenuState();
}

class _DrawerTreeMenuState extends State<DrawerTreeMenu> {
  var listIndex = <bool>[];

  @override
  void initState() {
    super.initState();
    for (var value in this.widget.wList) {
      listIndex.add(true);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: drawerTreeMenu(this.widget.wList));
  }

  List<Widget> drawerTreeMenu(List<GetPage> wList) {
    var list = <Widget>[];
    for (var i = 0; i < wList.length; i++) {
      var value = wList[i];
      if (value.children.length == 0) {
        continue;
      }
      list.add(ExpansionPanelList(
        expandedHeaderPadding: const EdgeInsets.all(0),
        expansionCallback: (int panelIndex, bool isExpanded) {
          setState(() {
            listIndex[panelIndex] = !isExpanded;
          });
        },
        children: [
          ExpansionPanel(
              canTapOnHeader: true,
              isExpanded: listIndex[i],
              headerBuilder: (BuildContext context, bool isExpanded) {
                return Container(
                  // height: 20,
                  // color: Colors.red,
                  alignment: Alignment.center,
                  child: Text(value.title!),
                );
              },
              body: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: 20,
                  maxHeight: 35,

                ),
                child: ListView(
                  children: value.children.map((e) {
                    return Container(child: Text(e.title!));
                  }).toList(),
                ),
              ))
        ],
      ));
    }
    return list;
  }
}
