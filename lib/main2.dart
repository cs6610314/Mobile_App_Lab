import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Tori Store', style: TextStyle(fontWeight: FontWeight.bold)),
          backgroundColor: const Color.fromARGB(255, 240, 98, 98),
          centerTitle: true,
          // Actions are icons on the right side of the AppBar
          actions: [
            IconButton(
              icon: const Icon(Icons.shopping_cart),
              onPressed: () => print("ไปหน้าตะกร้าสินค้า"),
            ),
            IconButton(
              icon: const Icon(Icons.home),
              onPressed: () => print("กลับหน้าหลัก"),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // This is your featured Card
              SleekProductCard(context),
            ],
          ),
        ),
      ),
    );
  }

  // Extracted the Card into a helper method for cleaner code
  Widget SleekProductCard(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.25,
      width: double.infinity,
      child: Card(
        color: const Color.fromARGB(255, 185, 185, 185),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
        elevation: 8,
        child:const Row(
          mainAxisAlignment: MainAxisAlignment.center, // Centers content vertically
          children: [
            const Icon(
              Icons.account_box_outlined, 
              size: 60, 
              color: Color.fromARGB(255, 0, 0, 0),
            ),
            const SizedBox(height: 10), // Adds spacing between icon and text
            Expanded(
              child: const Text(
                "โครงการคนละครึ่งพลัส สนับสนุนโดยภาครัฐมาตรการกระตุ้นเศรษกิจ",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}