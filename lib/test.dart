import 'package:flutter/material.dart';
import 'package:myapp_1/catalog_product.dart';
// Make sure to import your Detail Page file here!
// import 'package:myapp_1/product_detail_page.dart'; 

class Mylistpage extends StatefulWidget {
  const Mylistpage({super.key});

  @override
  State<Mylistpage> createState() => _MylistpageState();
}

class _MylistpageState extends State<Mylistpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: const Text('My Product Catalog'),
      ),
      body: ListView.separated(
        itemCount: CatalogProduct.items.length,
        separatorBuilder: (context, index) => const Divider(),
        itemBuilder: (context, index) {
          // Get the specific product for this row
          final product = CatalogProduct.items[index];

          return ListTile(
            leading: Image.network(
              product.imageUrl,
              width: 50,
              fit: BoxFit.cover,
            ),
            title: Text(product.title), // Using .title from your model
            subtitle: Text(product.desc),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
            // The onTap must be INSIDE the ListTile
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductDetailPage(product: product),
                ),
              );
            },
          );
        },
      ),
    );
  }
}



import 'package:flutter/material.dart';
import 'package:myapp_1/about_page.dart';
import 'package:myapp_1/catalog_product.dart';
import 'package:myapp_1/display_page.dart';
import 'package:myapp_1/welcome_page2.dart';

class Mylistpage extends StatefulWidget {
        Mylistpage({super.key});
  // final List<String> products = <String>[
  //   'Water',
  //   'Jacket',
  //   'Filter',
  //   'Robot',
  //   'Remote',
  // ];

  @override
  State<Mylistpage> createState() => _MylistpageState();
}

class _MylistpageState extends State<Mylistpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: const Text('My List Tap'),
      ),
      body: ListView.separated(
        itemCount: CatalogProduct.items.length,
        itemBuilder: (context, index) => ListTile(
          leading: Image.network(CatalogProduct.items[index].imageUrl),
          title: Text(CatalogProduct.items[index].desc),
        ),
        separatorBuilder: (context, int index) => const Divider(),
        onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductDetailPage(product: product),
                ),
              );
            },
    );
  }
}





        // children: [
          // ListTile(
          //   leading: Icon(Icons.person),
          //   title: Text('My Profile',style: TextStyle(fontSize: 20),),
          //   subtitle: Text('View/Edit Your Profile'),
          //   trailing: Icon(Icons.arrow_forward_ios),
          //   tileColor: Colors.green[50],
          //   onTap: () => Navigator.push(context,
          //   MaterialPageRoute(builder: (context) => const AboutPage())),
          // ),
          // ListTile(
          //   leading: Icon(Icons.monetization_on),
          //   title: Text('Billing Account',),
          //   subtitle: Text('View/Edit Your Profile'),
          //   trailing: Icon(Icons.arrow_forward_ios),
          //   tileColor: Colors.lightBlue[50],
          //   onTap: () => Navigator.push(context,
          //   MaterialPageRoute(builder: (context) => const WelcomePage2())),
          // ),
          // ListTile(
          //   leading: Icon(Icons.settings),
          //   title: Text('Settings',),
          //   subtitle: Text('View/Edit Your Profile'),
          //   trailing: Icon(Icons.arrow_forward_ios),
          //   tileColor: Colors.grey[50],
          //   onTap: () => Navigator.push(context,
          //   MaterialPageRoute(builder: (context) => const AboutPage())),
          // )
          
          
        // ],
      // ),