import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
    IconButton(
    icon: Icon(
    Icons.more_vert,
    color: Colors.white,
    ),
    onPressed: () {
   //e ShowExitDialog();
    },
    )
    ],
    ),
       body: Container(
         color: Colors.white,
          child: PhotoView(
            imageProvider: AssetImage(image),
          )
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