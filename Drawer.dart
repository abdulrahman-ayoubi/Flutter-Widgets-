import 'package:flutter/material.dart';

// Based on instructor code page 12-13
// TASKS 17-20: Drawer Widget

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  void selectMenu(BuildContext context, String title) {
    Navigator.pop(context);
    //  Task 20: Show different SnackBar message for each item
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('$title selected')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Drawer Widget'),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              //  Task 18: Change DrawerHeader title to app name
              //  Task 19: Add CircleAvatar inside DrawerHeader
              const DrawerHeader(
                decoration: BoxDecoration(color: Colors.indigo),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.white,
                      child: Icon(Icons.person, size: 40, color: Colors.indigo),
                    ),
                    SizedBox(height: 12),
                    Text(
                      'Student Course App',
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                    Text(
                      'Abdul Rahman Ayoubi',
                      style: TextStyle(color: Colors.white70, fontSize: 14),
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: const Icon(Icons.dashboard),
                title: const Text('Dashboard'),
                onTap: () => selectMenu(context, 'Dashboard'),
              ),
              ListTile(
                leading: const Icon(Icons.settings),
                title: const Text('Settings'),
                onTap: () => selectMenu(context, 'Settings'),
              ),
              //  Task 17: Add third menu item named Help
              ListTile(
                leading: const Icon(Icons.help),
                title: const Text('Help'),
                onTap: () => selectMenu(context, 'Help'),
              ),
            ],
          ),
        ),
        body: const Center(
          child: Text('Open the drawer from the AppBar menu icon.'),
        ),
      ),
    );
  }
}