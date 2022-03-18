import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:photo_view/photo_view.dart';

import 'Page.dart';

class ImageView extends StatelessWidget {
  const ImageView(
      {required Key key,
        required this.image,
        required this.title,
        })
      : super(key: key);
   final String image;
   final String title;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(title),
    actions: <Widget>[
      PopupMenuButton<Text>(
        itemBuilder: (context) {
          return [
            PopupMenuItem(
              child: Text(
                "Back",
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            PopupMenuItem(
              child: Text(
                "Exit",
              ),
              onTap: () {
                SystemChannels.platform.invokeMethod('SystemNavigator.pop');

              },
            ),
          ];
        },
      )
    ],
    ),
       body: Stack(
           children: [
             Container(
padding: EdgeInsets.all(4),
               margin: EdgeInsets.all(20),
               color: Colors.white,
               child: PhotoView(
                 backgroundDecoration:new BoxDecoration(
                   borderRadius: new BorderRadius.circular(16.0),
                   color: Colors.white,
                 ),
                 imageProvider: AssetImage(image),
               ),
             )
           ],
       
      ));

  }
  void ShowExitDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
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
      ),
    );
  }
}