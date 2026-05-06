import 'package:flutter/material.dart';

// Based on instructor code page 14-15
// TASKS 21-24: Container Widget

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Container Class')),
        body: Center(
          child: Container(
            //  Task 21: Change width to 300 and height to 200
            width: 300,
            height: 200,
            //  Task 24: Change padding and margin values
            margin: const EdgeInsets.all(24),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              //  Task 22: Replace Colors.teal with LinearGradient
              gradient: const LinearGradient(
                colors: [Colors.teal, Colors.green],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              //  Task 23: Add border using Border.all
              border: Border.all(color: Colors.black, width: 2),
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(
                  blurRadius: 8,
                  offset: Offset(2, 4),
                  color: Colors.black26,
                ),
              ],
            ),
            child: const Center(
              child: Text(
                'Container with size, gradient, border, shadow',
                style: TextStyle(color: Colors.white, fontSize: 18),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ),
    );
  }
}