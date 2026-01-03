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
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.25,
          child: Card(
            color: const Color.fromARGB(255, 185, 185, 185),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            elevation: 8,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: const [
                      Icon(Icons.account_box_outlined, size: 48),
                      SizedBox(width: 12),
                      Expanded(
                        child: Text(
                          "โครงการคนละครึ่งพลัส สนับสนุนโดยภาครัฐมาตรการกระตุ้นเศรษกิจ 50-50%",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 18),
                  Row(
                    children: [
                      const Icon(Icons.account_balance_wallet_outlined,
                          size: 36),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Row(
                          children: const [
                            Text("ยอดเงินคงเหลือ",
                                style: TextStyle(fontSize: 18)),
                            Spacer(),
                            Text("50",
                                style: TextStyle(
                                    fontSize: 26, fontWeight: FontWeight.bold)),
                            SizedBox(width: 6),
                            Text("บาท", style: TextStyle(fontSize: 18)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: 12),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.18,
          child: Card(
            color: const Color.fromARGB(255, 185, 185, 185),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            elevation: 8,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: const [
                  Text("ยอดใช้สิทธิ์แล้ววันนี้",
                      style: TextStyle(fontSize: 18)),
                  Spacer(),
                  Text("150",
                      style:
                          TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),
                  SizedBox(width: 6),
                  Text("บาท", style: TextStyle(fontSize: 18)),
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.18,
          child: Card(
            color: Colors.white,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            elevation: 6,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // รูปสินค้า
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      "assets/shop.jpg",
                      width: 70,
                      height: 70,
                      fit: BoxFit.cover,
                    ),
                  ),

                  const SizedBox(width: 14),

                  // ชื่อสินค้า
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          "เครื่องกรองน้ำ Filter ...",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(height: 6),
                        Text(
                          "กรองน้ำแบบ 3 ท่อ • 5 L/min ...",
                          style: TextStyle(fontSize: 12, color: Colors.black54),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),

                  // ดาวคะแนน

                  Text("4.5",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  Icon(Icons.star, color: Colors.amber, size: 22),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
