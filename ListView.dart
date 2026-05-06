import 'package:flutter/material.dart';

// Based on instructor code page 22-23
// TASKS 37-40: ListView Widget

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  //  Task 37: Add three more course names
  final List<String> courses = const [
    'Flutter Basics',
    'Dart Programming',
    'UI Design',
    'State Management',
    'Firebase Integration',
    'Final Project',
    'Advanced Animations',    // Added - Task 37
    'Testing & Debugging',    // Added - Task 37
    'Publishing to Stores',   // Added - Task 37
  ];

  void onCourseTap(BuildContext context, String course) {
    //  Task 39: Show SnackBar with course name
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Opening: $course')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('ListView Class')),
        body: ListView.builder(
          itemCount: courses.length,
          itemBuilder: (context, index) {
            //  Task 40: Replace Card with Container and style manually
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: ListTile(
                leading: CircleAvatar(child: Text('${index + 1}')),
                title: Text(courses[index]),
                //  Task 38: Add subtitle with course duration
                subtitle: const Text('Duration: 4 weeks'),
                trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                onTap: () => onCourseTap(context, courses[index]),
              ),
            );
          },
        ),
      ),
    );
  }
}