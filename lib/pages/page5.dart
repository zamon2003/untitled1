import 'package:flutter/material.dart';

class Page5 extends StatefulWidget {
  static final String id = 'page5';

  const Page5({Key? key}) : super(key: key);

  @override
  State<Page5> createState() => _Page5State();
}

class _Page5State extends State<Page5> {
  bool col = true;
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 4'),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                count++;
                if (count.isOdd) {
                  col = false;
                } else {
                  col = true;
                }
              });
            },
            icon: Icon(Icons.repeat, size: 30,),
          ),
        ],
      ),
      body: Center(
        child: col ? rang1() : rang2(),
      ),
    );
  }

  Widget rang1() {
    return Container(
      height: 100,
      width: 200,
      color: Colors.green,
      child: Center(
        child: Text(
          "Green",
          style: TextStyle(color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Widget rang2() {
    return Container(
      height: 100,
      width: 200,
      color: Colors.pink,
      child: Center(
        child: Text(
          "Pink",
          style: TextStyle(color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
