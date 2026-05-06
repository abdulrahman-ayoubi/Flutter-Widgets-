import 'package:flutter/material.dart';

// Based on instructor code page 9-10
// TASKS 13-16: BottomNavigationBar Widget

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int selectedIndex = 0;

  //  Task 16: Create List<Widget>
  final List<Widget> pages = [
    //  Task 14: Different color for each tab
    Container(color: Colors.blue.shade100, child: const Center(child: Text('Home Page', style: TextStyle(fontSize: 24)))),
    Container(color: Colors.green.shade100, child: const Center(child: Text('Courses Page', style: TextStyle(fontSize: 24)))),
    Container(color: Colors.orange.shade100, child: const Center(child: Text('Profile Page', style: TextStyle(fontSize: 24)))),
    Container(color: Colors.purple.shade100, child: const Center(child: Text('Settings Page', style: TextStyle(fontSize: 24)))),
  ];

  void changePage(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('BottomNavigationBar Demo'),
        ),
        body: pages[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: changePage,
          //  Task 15: Add selectedItemColor: Colors.indigo
          selectedItemColor: Colors.indigo,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Courses'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
            //  Task 13: Add fourth tab named Settings
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
          ],
        ),
      ),
    );
  }
}