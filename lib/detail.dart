import 'package:flutter/material.dart';
import 'package:myapp_1/Model/product.dart';

class ProductDetailPage extends StatelessWidget {
  final Product product;

  const ProductDetailPage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Product'),
        backgroundColor: Colors.amberAccent,
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 14,),
            Text(product.title, style: const TextStyle(fontSize: 28),),
            const SizedBox(height: 20,),
            Image.network(product.imageUrl,width: 100,),
            const SizedBox(height: 20,),
            Text(product.desc, style: const TextStyle(fontSize: 14,),textAlign: TextAlign.left,),
          ],
        ),
      ),
    );
  }
}