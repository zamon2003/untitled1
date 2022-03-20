import 'package:flutter/material.dart';
import 'package:untitled1/pages/home_page.dart';
class PageFo extends StatefulWidget {
  static const String id='page4';
  const PageFo({Key? key}) : super(key: key);

  @override
  State<PageFo> createState() => _PageFoState();
}

class _PageFoState extends State<PageFo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Net Images'),
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
        child: Image.network(
'https://2022-god.com/wp-content/uploads/2021/08/ceny-na-novogodnie-tury-v-moskvu-v-2022-godu.jpg',
        ),
      ),
    );
  }
}
