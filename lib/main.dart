import 'package:agencyguide/Constants.dart';
import 'package:agencyguide/Widgets/Card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'Card.dart';
import 'InternetCheck.dart';
import 'Menu.dart';
import 'Page.dart';
import 'Menus.dart';
import 'PdfViewer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({
    Key? key,
  }) : super(key: key);

  static final String _title = Constants.appName;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: MyStatefulWidget(
        key: UniqueKey(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({
    Key? key,
  }) : super(key: key);

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
      decoration: new BoxDecoration(
        color: Colors.white,
        borderRadius: new BorderRadius.only(
          topLeft: const Radius.circular(25.0),
          topRight: const Radius.circular(25.0),
        ),
      ),

      margin: EdgeInsets.only(left: 4.0,bottom : 4.0,top: 8.0,right: 4.0),
      padding: EdgeInsets.all(4.0),
      child:  GridView.count(
          crossAxisCount: 3,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
          children: List.generate(menus.homemenus.length, (index) {
            return HomeCard(
              menu: menus.homemenus[index],
              key: UniqueKey(),
            )
            ;
          })),
    ),







/*
    Container(
        margin: const EdgeInsets.all(4.0),
       padding: const EdgeInsets.all(4.0),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black12,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Stack(children: [
          Card(
            child: Container(

              padding: const EdgeInsets.all(8),
              child: GridView.count(
                  crossAxisCount: 3,
                  crossAxisSpacing: 2.0,
                  mainAxisSpacing: 2.0,
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
          //Container(height: 10,),
          //BottomNavBar(index: 1,key: UniqueKey(),)
        ])),
*/
    Container(
      decoration: new BoxDecoration(
        color: Colors.white,
        borderRadius: new BorderRadius.only(
            topLeft: const Radius.circular(25.0),
            topRight: const Radius.circular(25.0),
          ),
  ),

      margin: EdgeInsets.only(left: 4.0,bottom : 4.0,top: 8.0,right: 4.0),
      padding: EdgeInsets.all(4.0),
        child:  GridView.count(
                  crossAxisCount: 3,
                  crossAxisSpacing: 8.0,
                  mainAxisSpacing: 8.0,
                  children: List.generate(menus.ServiceMenus.length, (index) {
                    return HomeCard(
                        menu: menus.ServiceMenus[index],
                        key: UniqueKey(),
                      )
                    ;
                  })),
            ),

    CheckInternet(),


/*    const Text(
      'Coming soon',
      style: optionStyle,
    ),*/
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
            icon: Icon(Icons.account_balance_wallet),
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

Menus menus = new Menus();
