import 'package:flutter/material.dart';

class CKAboutDialog extends StatefulWidget {
  const CKAboutDialog({Key? key}) : super(key: key);

  @override
  State<CKAboutDialog> createState() => _CKAboutDialogState();
}

class _CKAboutDialogState extends State<CKAboutDialog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: TextButton(
        child: Text('aboutDialog'),
        onPressed: (){
          showAboutDialog(context: context);
        },
      ),
    );
  }
}
