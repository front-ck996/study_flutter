// import 'package:flutter/material.dart';
//
// import 'package:get/get.dart';
// import 'package:study_flutter/router/app_router.dart';
//
// class CompDrawerTreeMenu extends StatefulWidget {
//   final List<GetPage> wList;
//
//   const CompDrawerTreeMenu({Key? key, required this.wList}) : super(key: key);
//
//   @override
//   State<CompDrawerTreeMenu> createState() => _CompDrawerTreeMenuState();
// }
//
// class _CompDrawerTreeMenuState extends State<CompDrawerTreeMenu> {
//   var listIndex = <bool>[];
//
//   @override
//   void initState() {
//     super.initState();
//     for (var value in this.widget.wList) {
//       listIndex.add(true);
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(children: CompDrawerTreeMenu(this.widget.wList));
//   }
//
//   List<Widget> CompDrawerTreeMenu(List<GetPage> wList) {
//     var list = <Widget>[];
//     for (var i = 0; i < wList.length; i++) {
//       var value = wList[i];
//       if (value.children.length == 0) {
//         continue;
//       }
//       list.add(ExpansionPanelList(
//         expandedHeaderPadding: const EdgeInsets.all(0),
//         expansionCallback: (int panelIndex, bool isExpanded) {
//           setState(() {
//             listIndex[panelIndex] = !isExpanded;
//           });
//         },
//         children: [
//           ExpansionPanel(
//               canTapOnHeader: true,
//               isExpanded: listIndex[i],
//               headerBuilder: (BuildContext context, bool isExpanded) {
//                 return Container(
//                   alignment: Alignment.center,
//                   child: Text(value.title!),
//                 );
//               },
//               body: ConstrainedBox(
//                 constraints: const BoxConstraints(
//                   minHeight: 20,
//                   maxHeight: 35,
//                 ),
//                 child: ListView(
//                   children: value.children.map((e) {
//                     return GestureDetector(child: Text(e.title!),
//                       onTap: (){
//                       Navigator.of(context).pushNamed(APPRouter.pageMaterialAboutDialog);
//                         print(Get.context);
//                         print('onTap');
//                         // Get.toNamed(APPRouter.pageMaterialAboutDialog);
//                       },
//                       // onTap: () => Get.toNamed(e.name),
//                     );
//                   }).toList(),
//                 ),
//               ))
//         ],
//       ));
//     }
//     return list;
//   }
// }