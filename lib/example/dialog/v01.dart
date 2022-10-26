import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ExampleDialog_01 extends StatelessWidget {
  const ExampleDialog_01({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child:  GestureDetector(
          child: Text('惦记我'),
          onTap: (){
            showBottomSheet(context: context, builder: (_){
              return Text('1234');
            });
            // showBottomSheet(context: context, builder: (BuildContext context)){
            //   return Container();
            // })
            // showGeneralDialog(context: context, pageBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation){
            //   return showBottomSheet(context: context, builder: builder)
            //   // return Bottom(
            //   //   child: Text('我是文本'),
            //   // );
            // });
          },
        ),
      )

    );
  }
}
