import 'package:flutter/material.dart';

class LayoutNavbar extends StatefulWidget {
  @override
  _layoutNavigation createState() => _layoutNavigation();
}

class _layoutNavigation extends State<LayoutNavbar> {
  @override
 BottomNavigationBar: BottomNavigationBar(
  currentIndex : 0
  items :[
    BottomNavigationBarItem(
      icon : new Icon (Icons.dashboard),
      label : 'Dashboard'
    ),
    BottomNavigationBarItem(
      icon : new Icon (Icons.user),
      label : 'Profile'
    ),
    BottomNavigationBarItem(
      icon : new Icon (Icons.grid),
      label : 'Transaction'
    ),
  ],
 ),

}

