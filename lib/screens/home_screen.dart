import 'package:flutter/material.dart';
import '../widgets/buttons.dart';

// Temp Function to as a button class parameter
void printButton(){}

// Home Screen Class
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  // Override to build and display the home screen
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Main background color
      backgroundColor: Colors.white,
      // The top bar in the app
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Task One"),
      ),

      // The body of the app
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 50.0),
            child: const Text(
              "Welcome Back",
              style: TextStyle(
                fontSize: 36,
                fontFamily: 'PermanentMarker',
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Image.asset(
                'assets/chat.jpg',
                width: 300),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 80.0),
            height: 180,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                HomeScreenButton(buttonAction: printButton, buttonText: 'Get Started',),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space buttons evenly
                  children: [
                    HomeScreenButton(buttonAction: printButton, buttonText: 'Sign In',),
                    HomeScreenButton(buttonAction: printButton, buttonText: 'Sign Up',),
                  ],
                ),
              ]
            )
          )
        ],
      ),
    );
  }
}