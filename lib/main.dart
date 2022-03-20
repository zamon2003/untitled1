import 'package:flutter/material.dart';
import 'package:untitled1/pages/home_page.dart';
import 'package:untitled1/pages/page4.dart';
import 'package:untitled1/pages/page5.dart';
import 'package:untitled1/pages/second_page.dart';
import 'package:untitled1/pages/threenthPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      routes: {
        HomePage.id: (context) => const HomePage(),
        SecondPage.id: (context) => const SecondPage(),
        ThPage.id: (context) => const ThPage(),
        PageFo.id: (context) => const PageFo(),
        Page5.id: (context) => const Page5(),
      },
    );
  }
}
