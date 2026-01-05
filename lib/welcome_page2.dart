import 'package:flutter/material.dart';
import 'package:myapp_1/about_page.dart';

import 'display_page.dart';

class WelcomePage2 extends StatefulWidget {
  const WelcomePage2({super.key});

  @override
  State<WelcomePage2> createState() => _WelcomePage2State();
}

class _WelcomePage2State extends State<WelcomePage2> {
  String _output = '';
  final _textController = TextEditingController();

  @override
void initState(){
  super.initState();
  _output = 'Enter Ur name';
}

  @override
void dispose(){
  _textController.dispose();
  super.dispose();
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Welcome',
              style: TextStyle(fontWeight: FontWeight.bold)),
          backgroundColor: const Color.fromARGB(255, 240, 98, 98),
          centerTitle: true,
          // Actions are icons on the right side of the AppBar
          actions: [
            IconButton(
              icon: const Icon(Icons.info),
              tooltip: 'About Us',
              onPressed: (){
                Navigator.push(context
                ,MaterialPageRoute(
                  builder:(context)=> const AboutPage(),
                  ),
                );
              },
            )
          ],
        ),
        body: Center(
          child: Column(
            children: [
              const Text('Welcome'),
              Text('${_output}'),
              const SizedBox(
                height: 14,
              ),
              TextField(
                controller: _textController,
                decoration: const InputDecoration(
                  hintText: 'Enter Name',
                  labelText: 'Name',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  String input = _textController.text;
                //debugPrint('Press Button');
                debugPrint('Input: $input');
                setState(() {
                  _output ='U R $input \n good job';
                });
              }, child: const Text('Call Me')),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  String input = _textController.text;
                int intputAge = 18;
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context)=>DisplayPage(
                    name: input,
                    age: intputAge,
                  ),
                  ),
                );
                }, child: const Text('Display On Next Page.')),
                const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/about',
                  );
                }, child: const Text('About Us(route)')),

                const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                Navigator.pushNamed(
                  context,
                  'display',
                );
                }, child: const Text('Display(route)')),
            ],
          ),
        ),
      );
  }
}