import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PopDialog extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return  AlertDialog(
       title: Text("Exit"),
       content: Text("Are you sure to exit?"),
       actions: <Widget>[
         FlatButton(
             child: Text("Ok!"),
             onPressed: () {
               SystemChannels.platform.invokeMethod('SystemNavigator.pop');
             }),
         FlatButton(child: Text("No"), onPressed: () => Navigator.pop(context))
       ],
     );
  }
}

