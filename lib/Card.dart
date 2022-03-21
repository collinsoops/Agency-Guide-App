import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Menu.dart';
import 'Page1.dart';

class SelectCard extends StatelessWidget {
  const SelectCard({required Key key, required this.menu}) : super(key: key);
  final Menu menu;

  @override

  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 1.0,
      highlightElevation: 1.0,
      onPressed:(){
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
        borderRadius: BorderRadius.circular(10.0),
      ),
      color: Colors.white,
      textColor: Colors.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          if(menu.strImages[0] != null)
     Image.asset(
      menu.strImages[0],
      width: 50,
      height: 50,
      fit: BoxFit.fill,
    ),
          if(menu.title != null)
            SizedBox(height: 5.0),
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



/*
  Widget build(BuildContext context) {
    //final TextStyle textStyle = Theme.of(context).textTheme.bodyText1;
    return GestureDetector(
      child: SizedBox(
        // width: 100,
        // height: 100,
        child: Card(
          //elevation: 12,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
            side: BorderSide(width: 1, color: Colors.black26),
          ),

          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(4.0),
              ),
              Container(
                height: 5,
              ),
              Padding(
                  padding: EdgeInsets.all(2),
                  child:ClipRRect(
                    borderRadius: BorderRadius.circular(50.0),
                    child: Image.asset(
                      menu.strImages[0],
                      height: 50.0,
                      width: 50.0,
                      fit:BoxFit.contain, //change image fill type
                    ),
                  )
              ),

              */
/*Align(
                child: Image.asset(
                  choice.strImages[0],
                  width: 50,
                  height: 50,
                  fit: BoxFit.fill,
                ),
              ),*//*


              Center(
                child: Column(
                  //top: 0,
                    children: [
                      Container(
                        //padding: EdgeInsets.symmetric(vertical: 2, horizontal: 6),
                        margin: EdgeInsets.only(left: 20, right: 10),
                        child: Text(menu.title,
                            style: GoogleFonts.breeSerif(
                                fontSize: 10,
                                fontWeight: FontWeight.bold)),
                        ),
                    ]),
              ),
            ],
          ),
        ),
      ),
      onTap: () async {
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
    );
  }
*/
}
