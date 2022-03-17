import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Card.dart';
import 'Menus.dart';
Menus menus= new Menus();

 class WidgetList{
  final List<Widget> _widgetOptions = <Widget>[
  Container(
  padding: EdgeInsets.all(8),
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
  ]),),
  Container(
  padding: EdgeInsets.all(8),
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
  ]),),

];


}


