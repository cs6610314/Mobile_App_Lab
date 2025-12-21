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
          title: const Text('Tori Store'),
          backgroundColor: const Color.fromARGB(255, 240, 98, 98),
          centerTitle: true,
          actions: [
            IconButton(
              icon: const Icon(Icons.shopping_cart),
              onPressed: () {
                print("ไปหน้าตะกร้าสินค้า");
              },
            ),
            IconButton(
              icon: const Icon(Icons.home),
              onPressed: () {
                print("กลับหน้าหลัก");
              },
            ),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/local.png',
                width: 150,
                height: 150,
                errorBuilder: (context, error, stackTrace) {
                  return const Icon(Icons.error, color: Colors.red, size: 100);
                },
              ),
              // -------------------------------------------
              
              const SizedBox(height: 20),
              const Text(
                'ชำระเงินเรียบร้อย!',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'ขอบคุณที่ใช้บริการกับเรา',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              const SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text('เลขที่รายการ:', style: TextStyle(fontWeight: FontWeight.bold)),
                    Text('NLP-111111'),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text('ยอดชำระ:', style: TextStyle(fontWeight: FontWeight.bold)),
                    Text('฿ 1,250.00', style: TextStyle(color: Colors.redAccent)),
                  ],
                ),
              ),
              const SizedBox(height: 50),
              ElevatedButton.icon(
                onPressed: () {
                  print('กลับหน้าหลัก');
                },
                label: const Text('กลับสู่หน้าหลัก'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 240, 98, 98),
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
