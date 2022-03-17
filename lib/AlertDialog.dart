import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ImageDialog extends StatelessWidget {
  const ImageDialog(
      {required Key key, required this.nimage, required this.Step})
      : super(key: key);
  final String nimage;
  final int Step;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Dialog(
        child: Container(
          //width: 200,
          // height: 200,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: ExactAssetImage(nimage),
            fit: BoxFit.fill,
          )),
        ),
      ),
      onTap: () {
        SystemChannels.platform.invokeMethod('SystemNavigator.pop');
      },
    );
  }
}
