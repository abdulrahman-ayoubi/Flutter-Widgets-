import 'package:flutter/material.dart';

// Based on instructor code page 24-25
// TASKS 41-44: GridView Widget

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  //  Task 44: Create grid of course modules instead of device icons
  final List<Map<String, dynamic>> modules = const [
    {'icon': Icons.code, 'name': 'Programming', 'color': 0xFF2196F3},
    {'icon': Icons.design_services, 'name': 'Design', 'color': 0xFF4CAF50},
    {'icon': Icons.cloud_queue, 'name': 'Cloud', 'color': 0xFFFF9800},
    {'icon': Icons.security, 'name': 'Security', 'color': 0xFF9C27B0},
    {'icon': Icons.data_usage, 'name': 'Data Science', 'color': 0xFF00BCD4},
    {'icon': Icons.mobile_friendly, 'name': 'Mobile Dev', 'color': 0xFFE91E63},
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('GridView')),
        body: Padding(
          padding: const EdgeInsets.all(12),
          child: GridView.builder(
            //  Task 41: Change crossAxisCount from 2 to 3
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 12,
              crossAxisSpacing: 12,
            ),
            itemCount: modules.length,
            itemBuilder: (context, index) {
              //  Task 43: Change tile color based on index: even blue, odd green
              final isEven = index % 2 == 0;
              return Container(
                decoration: BoxDecoration(
                  color: isEven ? Colors.blue.shade100 : Colors.green.shade100,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    color: Color(modules[index]['color']),
                    width: 1.5,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      modules[index]['icon'],
                      size: 40,
                      color: Color(modules[index]['color']),
                    ),
                    const SizedBox(height: 8),
                    //  Task 42: Add text labels under each icon
                    Text(
                      modules[index]['name'],
                      style: TextStyle(
                        color: Color(modules[index]['color']),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
