import 'package:flutter/material.dart';
import 'package:myapp_1/Assignment1/homepage.dart';
import 'package:myapp_1/about_page.dart';
import 'package:myapp_1/dwo/bottom_navbar_page.dart';
import 'package:myapp_1/mylist_page.dart';
import 'package:myapp_1/welcome_page.dart';
import 'package:myapp_1/welcome_page2.dart';
import 'package:myapp_1/dwo/detail_page_1.dart'; 
import 'package:myapp_1/dwo/mylist_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // ตั้งค่าสีหลักของแอป
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
        // ตั้งค่าสี AppBar ให้เป็นสีส้มตามที่คุณต้องการ
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.orange,
          foregroundColor: Colors.white, // สีตัวอักษรบน AppBar
          centerTitle: true,
        ),
      ),
      routes: {
        //'/': (context) => const DetailPage(),
        //'/': (context) => const MyListPage(),
        //'/': (context) => const MyHomePage(title: title),
        '/': (context) => const BottomNavBarPage(),
      },
      initialRoute: '/',
      //home: const MyListPage(), 
      //home: const MyHomePage, 
    );
  }
}