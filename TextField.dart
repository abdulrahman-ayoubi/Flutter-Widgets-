import 'package:flutter/material.dart';

// Based on instructor code page 26-27
// TASKS 45-48: TextField Widget

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final TextEditingController nameController = TextEditingController();
  //  Task 45: Add second TextField for email
  final TextEditingController emailController = TextEditingController();
  String greeting = 'Enter your name and email';

  void updateGreeting() {
    setState(() {
      //  Task 48: Show error message if name field is empty
      if (nameController.text.isEmpty) {
        greeting = 'Please enter your name';
      } else {
        greeting = 'Hello, ${nameController.text}! Welcome back!';
      }
      //  Task 47: Clear name field after pressing button
      nameController.clear();
    });
  }

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('TextField')),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  labelText: 'Student name',
                  hintText: 'Enter your full name',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person),
                ),
              ),
              const SizedBox(height: 16),
              //  Task 45: Second TextField for email
              TextField(
                controller: emailController,
                //  Task 46: Add keyboardType: TextInputType.emailAddress
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  labelText: 'Email Address',
                  hintText: 'your@email.com',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.email),
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: updateGreeting,
                child: const Text('Show Greeting & Clear Name'),
              ),
              const SizedBox(height: 16),
              Text(greeting, style: const TextStyle(fontSize: 22)),
            ],
          ),
        ),
      ),
    );
  }
}