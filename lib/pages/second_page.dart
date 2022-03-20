import 'package:flutter/material.dart';
import 'package:untitled1/pages/home_page.dart';

class SecondPage extends StatefulWidget {
  static final String id = 'second_page';

  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent,
        title: Text(
          'Second Page',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, HomePage.id);
            },
            icon: Icon(Icons.home),
          ),
        ],
      ),
      body: Center(
        child: Image(
          width: 300,
          height: 300,
          image: AssetImage("assets/images/222.png"),
        ),
      ),
    );
  }
}
