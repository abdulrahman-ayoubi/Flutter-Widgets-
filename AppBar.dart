import 'package:flutter/material.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  void showMessage(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          // FTask 5: Change title to "Student Dashboard"
          title: const Text('Student Dashboard'),
          //  Task 7: Set centerTitle: true
          centerTitle: true,
          backgroundColor: Colors.indigo,
          foregroundColor: Colors.white,
          //  Task 8: Change leading icon to Icons.arrow_back
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () => showMessage(context, 'Back pressed'),
          ),
          //  Task 6: Add IconButton with Icons.notifications
          actions: [
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () => showMessage(context, 'Search clicked'),
            ),
            IconButton(
              icon: const Icon(Icons.notifications),
              onPressed: () => showMessage(context, 'Notifications clicked'),
            ),
          ],
        ),
        body: const Center(
          child: Text('AppBar can show title, menu, and actions.'),
        ),
      ),
    );
  }
}