import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/category_page.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FOOD APP',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('FOOD APP',style: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.bold,
          ),),
        ),

        body: SafeArea(
          child: CategoryPage(),
        )
      )
    );
  }
}

