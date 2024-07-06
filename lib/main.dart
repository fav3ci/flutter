import 'package:flutter/material.dart';
import 'package:home_about_page/screen1.dart';
import 'package:home_about_page/screen2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

//root

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'homepage',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: Screen1(),
      routes: {
        'screen1': (context) {
          return Screen1();
        },
        'screen2': (context) {
          return Screen2();
        }
      },
    );
  }
}
