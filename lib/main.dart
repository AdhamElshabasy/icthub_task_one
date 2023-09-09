import 'package:flutter/material.dart';
import 'package:task_one/screens/home_screen.dart';

// Main Function to run the app
void main() {
  runApp(const MyApp());
}

// Main Class for the app
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Override to build and display the home screen
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // Remove the top right debug watermark
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
