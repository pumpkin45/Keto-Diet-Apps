import 'package:flutter/material.dart';

class Packages extends StatefulWidget {
  const Packages({super.key});

  @override
  State<Packages> createState() => _PackagesState();
}

class _PackagesState extends State<Packages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
         title: Text('PMLS Keto Diet'),
        backgroundColor: Colors.deepOrange,
        elevation: 0,
      ),
      body: Column(
        
      ),
    );
  }
}