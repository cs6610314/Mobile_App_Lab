import 'package:flutter/material.dart';

//void main() {
//  runApp(MaterialApp(
//    home: Scaffold(
//        appBar: AppBar(
//          title: Text('WHAT THE APP'),
//          backgroundColor: const Color.fromARGB(255, 109, 220, 57),
//        ),
//        body: Text('Hello World')),
//  ));
//}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('WHAT THE APP'),
            backgroundColor: const Color.fromARGB(255, 109, 220, 57),
          ),
          body: Text(
            'Hello World',
            style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold),
          )),
    );
  }
}
