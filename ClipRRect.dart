import 'package:flutter/material.dart';

// Based on instructor code page 18-19
// TASKS 29-32: ClipRRect Widget

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('ClipRRect Widget')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //  Task 29: Change borderRadius to 8, 40, 80 (using 40 here)
              ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Container(
                  width: 200,
                  height: 100,
                  color: Colors.deepOrange,
                  alignment: Alignment.center,
                  child: const Text('R=40', style: TextStyle(color: Colors.white)),
                ),
              ),
              const SizedBox(height: 20),
              //  Task 30: Replace Container child with Image.network
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  'https://picsum.photos/200/100',
                  width: 200,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 20),
              //  Task 31: Use BorderRadius.only for top-left and bottom-right
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
                child: Container(
                  width: 200,
                  height: 80,
                  color: Colors.teal,
                  alignment: Alignment.center,
                  child: const Text('Only corners', style: TextStyle(color: Colors.white)),
                ),
              ),
              //  Task 32: Wrap ClipRRect with SizedBox
              const SizedBox(height: 20),
              SizedBox(
                width: 150,
                height: 150,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(color: Colors.purple, child: const Center(child: Text('SizedBox + ClipRRect'))),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}