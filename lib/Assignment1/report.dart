import 'package:flutter/material.dart';

class ReportPage extends StatelessWidget {
  final String amount;

  const ReportPage({super.key, required this.amount});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Report',
              style: TextStyle(fontWeight: FontWeight.bold)),
          backgroundColor: const Color.fromARGB(255, 240, 98, 98),
          centerTitle: true,
          automaticallyImplyLeading: false,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'เติมเงินเรียบร้อย',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              Text('จำนวนเงินที่เติม: $amount บาท'),
              const SizedBox(height: 10),
              const Text('Balance: 20 บาท'),
            ],
          ),
        ),
      ),
    );
  }
}
