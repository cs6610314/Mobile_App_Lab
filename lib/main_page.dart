import 'package:flutter/material.dart';
import 'package:myapp_1/about_page.dart';
import 'package:myapp_1/display_page.dart';
import 'package:myapp_1/welcome_page2.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor:Colors.green ),
        useMaterial3: true,
        appBarTheme: const AppBarTheme(color: Colors.orange)
      ),
      routes: {
        '/': (context) => const WelcomePage2(),
        '/about': (context) => const WelcomePage2(),
        '/display': (context) => const DisplayPage(name: ''),
      },
      initialRoute: '/',
    );
  }
}