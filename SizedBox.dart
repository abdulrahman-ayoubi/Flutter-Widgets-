import 'package:flutter/material.dart';

// Based on instructor code page 16-17
// TASKS 25-28: SizedBox Widget

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('SizedBox Widget')),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text('First Text', style: TextStyle(fontSize: 22)),
              //  Task 25: Change SizedBox height to 8, 40, 80 (using 40 here)
              const SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Button after vertical gap'),
              ),
              const SizedBox(height: 24),
              //  Task 27: Make fixed-size button width 300 and height 60
              SizedBox(
                width: 300,
                height: 60,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Fixed Size Button'),
                ),
              ),
              //  Task 26: Add Row with SizedBox(width:20) between two icons
              const SizedBox(height: 24),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.favorite, size: 40, color: Colors.red),
                  SizedBox(width: 20),
                  Icon(Icons.star, size: 40, color: Colors.amber),
                ],
              ),
              //  Task 28: Replace one SizedBox spacing with Padding
              const Padding(padding: EdgeInsets.symmetric(vertical: 20)),
              const Text('Padding used instead of SizedBox above - Task 28'),
            ],
          ),
        ),
      ),
    );
  }
}