import 'package:flutter/material.dart';

class MaterialAsyncUI extends StatefulWidget {
  const MaterialAsyncUI({Key? key}) : super(key: key);

  @override
  State<MaterialAsyncUI> createState() => _MaterialAsyncUIState();
}

class _MaterialAsyncUIState extends State<MaterialAsyncUI> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FractionallySizedBox(
        heightFactor: 1,
        widthFactor: 1,
        child: Container(
          color: Colors.red,
          child: Center(
            child: FutureBuilder(
              future: Future.delayed(Duration(seconds: 3), () => '我是返回值'),
              builder:(BuildContext context, AsyncSnapshot snapshot){
                if(snapshot.connectionState == ConnectionState.done){
                  if(snapshot.hasError){
                    return Text('Error');
                  }else{
                    return Text(snapshot.data);
                  }
                }else{
                  return CircularProgressIndicator();
                }
              },
            ),
          ),
        ),
      ),
    );
  }
}
