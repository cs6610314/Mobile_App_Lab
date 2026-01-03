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
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [

      // ===== Header ร้าน =====
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 28,
            backgroundImage: const AssetImage("assets/men.jpg"),
            backgroundColor: Colors.grey.shade200,
          ),

          const SizedBox(width: 12),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "เครื่องกรองน้ำ Water Filter R0-01",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 4),
                Text(
                  "เครื่องกรองน้ำดื่มแบบ R0-01 ปริมาณ 15 L/min",
                  style: TextStyle(fontSize: 13, color: Colors.black54),
                ),
              ],
            ),
          ),
        ],
      ),

      const SizedBox(height: 14),

      // ===== รูปสินค้า =====
      ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Image.asset(
          "assets/shop.jpg",
          width: double.infinity,
          fit: BoxFit.cover,
        ),
      ),

      const SizedBox(height: 14),

      // ===== Like / Comment / Share =====
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          Row(
            children: [
              Icon(Icons.favorite, size: 22),
              Text("Like", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
            ],
          ),
          
          Row(
            children: [
              Icon(Icons.comment, size: 22),
              Text("Comment", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
            ],
          ),
          
          Row(
            children: [
              Icon(Icons.share, size: 22),
              Text("Share", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
            ],
          ),
          
        ],
      ),
    ],
  );
}

}
