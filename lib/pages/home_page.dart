import 'dart:math';

import 'package:flutter/material.dart';
import 'package:untitled1/pages/second_page.dart';
import 'package:untitled1/pages/threenthPage.dart';

class HomePage extends StatefulWidget {
  static final String id = 'home_page';

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int i = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent,
        title: Text(
          '2 ni darajalari',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  i = 1;
                });
              },
              icon: Icon(Icons.repeat)),
          IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, ThPage.id);
            },
            icon: Icon(Icons.accessibility_new_rounded),
          ),
          IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, SecondPage.id);
            },
            icon: Icon(Icons.info),
          ),
        ],
      ),
      body: Center(
        child: Text(
          i.toString(),
          style: TextStyle(
              color: Colors.black87, fontSize: 40, fontWeight: FontWeight.bold),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            i *= 2;
          });
        },
      ),
    );
  }
}
