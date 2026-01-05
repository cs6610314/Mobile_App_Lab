import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  String _output = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Welcome',
              style: TextStyle(fontWeight: FontWeight.bold)),
          backgroundColor: const Color.fromARGB(255, 240, 98, 98),
          centerTitle: true,
          // Actions are icons on the right side of the AppBar
        ),
        body: Center(
          child: Column(
            children: [
              const Text('Welcome'),
              Text('${_output}'),
              const SizedBox(
                height: 14,
              ),
              ElevatedButton(
                onPressed: () {
                debugPrint('Press Button');
                setState(() {
                  _output ='Im..Batman';
                });
              }, child: const Text('Call Me'))
            ],
          ),
        ),
      );
  }
}