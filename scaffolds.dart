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
        //  Task 1: Change background color to amber.shade100
        backgroundColor: Colors.amber.shade100,
        appBar: AppBar(title: const Text('My First Flutter Screen')),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //  Task 2: Replace with full name and student ID
              Text(
                'Abdul Rahman Ayoubi',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text('Student ID: S01020102', style: TextStyle(fontSize: 18)),
              //  Task 3: Add second Text widget using Column
              SizedBox(height: 20),
              Text('Welcome to Flutter!', style: TextStyle(fontSize: 16)),
              //  Task 4: Instructional message
              SizedBox(height: 10),
              Text(
                'Task 4: If you remove Scaffold, you will get an error',
                style: TextStyle(fontSize: 12, fontStyle: FontStyle.italic),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
