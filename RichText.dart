import 'package:flutter/material.dart';

// Based on instructor code page 20-21
// TASKS 33-36: RichText Widget

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const baseStyle = TextStyle(fontSize: 22, color: Colors.black87);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('RichText Widget')),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: RichText(
              textAlign: TextAlign.center,
              text: const TextSpan(
                style: baseStyle,
                children: [
                  TextSpan(text: 'Learn '),
                  //  Task 33: Change "RichText" to course name and make it green
                  TextSpan(
                    text: 'Flutter Widgets ',
                    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green),
                  ),
                  TextSpan(text: 'with '),
                  //  Task 34: Add TextSpan with italic style
                  TextSpan(
                    text: 'Abdul Rahman Ayoubi\n',
                    style: TextStyle(fontStyle: FontStyle.italic, color: Colors.indigo),
                  ),
                  TextSpan(text: 'Student ID: '),
                  //  Task 35: Make final sentence fontSize 26
                  TextSpan(
                    text: 'S01020102',
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}