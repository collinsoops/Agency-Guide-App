import 'package:agencyguide/Menu.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Page1.dart';



class HomeCard extends StatelessWidget {
final Menu menu;

  const HomeCard({ required Key key, required this.menu}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 1.0,
      highlightElevation: 1.0,
      padding: EdgeInsets.all(1),
      onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => SwipePage(
                  option: menu.title,
                  description: menu.description,
                  strImages: menu.strImages,
                  thesteps: menu.thesteps,
                  key: UniqueKey(),
                )));
      },
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
        side: BorderSide(width: 1, color: Colors.black12,),

      ),
      textColor: Colors.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
            Image.asset(
              menu.strImages[0],
              width: 50,
              height: 50,
              fit: BoxFit.fill,
            ),
            SizedBox(height: 10.0),
          AutoSizeText(
            menu.title,
            minFontSize: 10.0,
            textAlign: TextAlign.center,
            maxLines: 3,
            wrapWords: false,),
        ],
      ),
    );
  }


}