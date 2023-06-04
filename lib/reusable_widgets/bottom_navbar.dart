import 'package:flutter/material.dart';
import 'package:pmlsketodietproject/screens/cust/cust_downloadEbook.dart';
import 'package:pmlsketodietproject/screens/home_screen.dart';

import '../screens/cust/cust_buyEbook.dart';

class BottomBarScreen extends StatefulWidget {
  const BottomBarScreen({super.key});

  @override
  State<BottomBarScreen> createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {

  int _selectedIndex = 0;
  final List <Map<String, dynamic>>_pages = [
    {'page': const HomeScreen(), 'title': 'Home Page'},
    {'page': const BuyEbook(), 'title': 'Buy Ebook'},
  
  ];

  void _selectedPage(int index){
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text(_pages[_selectedIndex]['title']),),
      body: _pages[_selectedIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.deepOrange,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: _selectedIndex,
          unselectedItemColor: Colors.white,
          selectedItemColor: Colors.white,
          onTap: _selectedPage,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(_selectedIndex == 0 ? Icons.home : Icons.home_filled),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(_selectedIndex == 0
                  ? Icons.diamond_outlined
                  : Icons.diamond_rounded),
              label: 'Premium',
            ),
             BottomNavigationBarItem(
              icon: Icon(_selectedIndex == 0
                  ? Icons.info_outline
                  : Icons.info_rounded),
              label: 'About',
            ),
          ]),
    );
  }
}