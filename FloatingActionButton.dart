import 'package:flutter/material.dart';

// Based on instructor code page 7-8
// TASKS 9-12: FloatingActionButton Widget

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int counter = 0;

  void increaseCounter() {
    setState(() {
      //  Task 10: Make counter decrease instead of increase
      counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('FloatingActionButton')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('You have pushed the button this many times:'),
              Text(
                '$counter',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              //  Task 10: Show decrease message
              const SizedBox(height: 10),
              const Text('(Counter decreases - Task 10)'),
            ],
          ),
        ),
        //  Task 9: Change FAB icon to Icons.favorite
        //  Task 11: Change tooltip to "Add one"
        //  Task 12: Add floatingActionButtonLocation
        floatingActionButton: FloatingActionButton(
          onPressed: increaseCounter,
          tooltip: 'Add one',
          child: const Icon(Icons.favorite),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}