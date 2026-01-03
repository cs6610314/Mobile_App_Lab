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
          title: const Text('Tori Store',
              style: TextStyle(fontWeight: FontWeight.bold)),
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
    return Column(
      children: [
        Image.asset(
          "assets/shop.jpg",
          fit: BoxFit.cover,
        ),
        SizedBox(height: 6),
        Row(
          children: [
            Column(
              children: [
                Text(
                  "เครื่องกรองน้ำ Water Filter R0-01",
                  style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  "เครื่องกรองน้ำดื่มแบบ R0-01 ปริมาณ 15 L/min สำหรับ",
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
            Spacer(),
            Text("4.5",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  Icon(Icons.star, color: Colors.amber, size: 22),
          ],
        ),
        SizedBox(height: 6),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton.icon(
                    onPressed: () {
                      print('Add To Cart');
                    },
                    label: const Text('Add To Cart'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 218, 206, 255),
                      foregroundColor: const Color.fromARGB(255, 109, 62, 249),
                      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                      textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(width: 20),
            ElevatedButton.icon(
                onPressed: () {
                  print('Buy Now');
                },
                label: const Text('Buy Now'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 218, 206, 255),
                  foregroundColor: const Color.fromARGB(255, 109, 62, 249),
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
          ],
        ),
              
      ],
    );
  }
}
