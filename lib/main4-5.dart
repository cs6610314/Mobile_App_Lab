import 'package:flutter/material.dart';
import 'package:myapp_1/about_page.dart';
import 'package:myapp_1/mylist_page.dart';
import 'package:myapp_1/welcome_page.dart';
import 'package:myapp_1/welcome_page2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor:Colors.green ),
        useMaterial3: true,
        appBarTheme: const AppBarTheme(color: Colors.orange)
      ),
      home: Mylistpage()
    );
  }
}
