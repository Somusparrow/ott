import 'package:flutter/material.dart';
import 'package:ott/search.dart';


import 'picker.dart';
import 'ott.dart';

class navigation extends StatefulWidget {
  const navigation({super.key});

  @override
  State<navigation> createState() => _navigationState();
}

class _navigationState extends State<navigation> {
  
  int _intex = 0;
  final pages =[
    ott(),
    search(),
    picker(),
  ];
  
  void tap(abc)
  {
    setState(() {
      _intex = abc;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_intex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: "search"),
          BottomNavigationBarItem(icon: Icon(Icons.settings),label: "settings"),
        ],
        currentIndex: _intex,
        onTap: tap,
      ),
    );
  }
}
