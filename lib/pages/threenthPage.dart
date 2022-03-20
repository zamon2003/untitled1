import 'package:flutter/material.dart';
import 'package:untitled1/pages/page4.dart';
import 'package:untitled1/pages/page5.dart';

class ThPage extends StatefulWidget {
  static const String id = 'tree_page';

  const ThPage({Key? key}) : super(key: key);

  @override
  State<ThPage> createState() => _ThPageState();
}

class _ThPageState extends State<ThPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        children: [
          SizedBox(
            height: 25,
          ),
          FlatButton(
            color: Colors.blue,
            onPressed: () {
              Navigator.pushReplacementNamed(context, Page5.id);
            },
            child: Text(
              'Flat Button',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          OutlineButton(
            onPressed: () {},
            color: Colors.black87,
            child: Text(
              'Outline Button',
              style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          RaisedButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, PageFo.id);
            },
            color: Colors.blueAccent,
            shape: Border.all(width: 2, color: Colors.red),
            elevation: 20,
            child: Text(
              'Sized Box',
              style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            ),
          )
        ],
      ),
    ));
  }
}
