import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Responsive Web Layout',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: WebLayout(),
    );
  }
}

class WebLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          // Sidebar
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.blue[800],
              child: Column(
                children: [
                  const SizedBox(height: 40),
                  Text(
                    'Sidebar',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  ListTile(
                   
                    title: Text('Home', style: TextStyle(color: Colors.white)),
                  ),
                  ListTile(
                   
                    title: Text('Profile', style: TextStyle(color: Colors.white)),
                  ),
                  ListTile(
                   
                    title: Text('Settings', style: TextStyle(color: Colors.white)),
                  ),
                ],
              ),
            ),
          ),

          // Main Content Area
          Expanded(
            flex: 4,
            child: Column(
              children: [
                // Header
                Container(
                  color: Colors.blue[700],
                  padding: const EdgeInsets.all(16.0),
                  width: double.infinity,
                  child: Text(
                    'Header',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                
                // Content
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(20.0),
                    color: Colors.grey[200],
                    child: Center(
                      child: Text(
                        'Main Content Area',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black54,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}