import 'package:flutter/material.dart';
import 'package:myapp_1/about_page.dart';
import 'package:myapp_1/catalog_product.dart';
import 'package:myapp_1/display_page.dart';
import 'package:myapp_1/welcome_page2.dart';
import 'package:myapp_1/detail.dart'; 

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
          onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductDetailPage(product: CatalogProduct.items[index]),
                ),
              );
            },
        ),
        separatorBuilder: (context, int index) => const Divider(),
        ),
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