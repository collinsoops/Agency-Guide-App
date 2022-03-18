import 'package:agencyguide/Constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'Card.dart';
import 'Menu.dart';
import 'Page.dart';
import 'Menus.dart';
import 'PdfViewer.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  MyApp({Key? key,}) : super(key: key);

  static final String _title = Constants.appName;


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: MyStatefulWidget(key:UniqueKey(),),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key? key,}) : super(key: key);


  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {

  @override
  void initState() {
    //final men = widget.menusi;
    super.initState();
  }
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static final List<Widget> _widgetOptions = <Widget>[
    Container(
        padding: const EdgeInsets.all(8),
        child: Stack(children: [
          Card(
            child: Container(
              padding: const EdgeInsets.all(10),
              child: GridView.count(
                  crossAxisCount: 3,
                  crossAxisSpacing: 4.0,
                  mainAxisSpacing: 4.0,
                  children: List.generate(menus.homemenus.
                  length, (index) {
                    return Center(
                      child: SelectCard(
                        menu: menus.homemenus[index],
                        key: UniqueKey(),
                      ),
                    );
                  })),
            ),
          ),
          //Container(height: 10,),
          //BottomNavBar(index: 1,key: UniqueKey(),)
        ])),
    Container(
      margin: const EdgeInsets.all(4),
        padding: const EdgeInsets.all(8),

        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black45,
          ),
          borderRadius: BorderRadius.circular(20),
        ),

        child: Stack(children: [
          Card(
            child: Container(
              padding: const EdgeInsets.all(10),
              child: GridView.count(
                  crossAxisCount: 3,
                  crossAxisSpacing: 4.0,
                  mainAxisSpacing: 4.0,
                  children: List.generate(menus.ServiceMenus.
                  length, (index) {
                    return Center(
                      child: SelectCard(
                        menu: menus.ServiceMenus[index],
                        key: UniqueKey(),
                      ),
                    );
                  })),
            ),
          ),
          //Container(height: 10,),
          //BottomNavBar(index: 1,key: UniqueKey(),)
        ])),

    const Text(
      'Coming soon',
      style: optionStyle,
    ),
    MyPdfViewer(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        leading: IconButton(
          tooltip: "Home",
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
        title: Text(Constants.appName),
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
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.monetization_on),
            label: 'Services',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'My Account',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.picture_as_pdf),
            label: 'Read PDF',
            backgroundColor: Colors.green,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black87,
        onTap: _onItemTapped,
      ),
    );
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


Menus menus= new Menus();


