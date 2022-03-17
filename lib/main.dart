import 'package:agencyguide/BottomNav.dart';
import 'package:agencyguide/Constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'BottomNavBar.dart';
import 'Card.dart';
import 'Menu.dart';
import 'Page.dart';
import 'Menus.dart';
import 'PdfViewer.dart';

void main() {
  runApp( MyNav());
}
class MyApp extends StatelessWidget {
  Menus menus= new Menus();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme:new ThemeData(primaryColor: Color(0x68BB42)),
    home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green,
              leading: IconButton(
                tooltip: "Home",
                icon: const Icon(Icons.menu),
                onPressed: () {},
              ),
              title: Text(
                Constants.appName
              ),
              actions: [

                IconButton(
                  tooltip: "Search",
                  icon: const Icon(
                    Icons.search,
                  ),
                  onPressed: () {},
                ),
                PopupMenuButton<Text>(
                  itemBuilder: (context) {
                    return [
                      PopupMenuItem(
                        child: Text(
                         "Back",
                        ),
                        onTap: (){

                        },
                      ),
                      PopupMenuItem(
                        child: Text(
                          "Exit",
                        ),
                        onTap: (){
                          ShowExitDialog(context);
                        },
                      ),

                    ];
                  },
                )
              ],






            /* backgroundColor: Colors.green,
            title: Text("Harambee Agency Help"),
            actions: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.more_vert,
                  color: Colors.white,
                ),
                onPressed: () {
                  ShowExitDialog(context);
                },
              )
            ],*/
          ),
          body: Container(
              padding: EdgeInsets.all(8),
              child: Stack(
                children:[
                  Card(
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: GridView.count(
                        crossAxisCount: 3,
                        crossAxisSpacing: 4.0,
                        mainAxisSpacing: 4.0,
                        children: List.generate(menus.homemenus.length, (index) {
                          return Center(
                            child: SelectCard(
                              menu: menus.homemenus[index],
                              key: UniqueKey(),
                            ),
                          );
                        })),
                    ),
                  ),
                  Container(height: 10,),
                  BottomNavBar(index: 1,key: UniqueKey(),)
                ]
              )

          ),
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

