import 'package:flutter/material.dart';
import 'package:task_one/widgets/buttons.dart';
import 'package:task_one/screens/list_screen.dart';

// Function to navigate to a screen by class name
void navigateToScreen(BuildContext context, Widget screen) {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (context) => screen),
  );
}

// Home Screen Class
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  // Override to build and display the home screen
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
              child: Image.asset('assets/chat.jpg', width: 300),
            ),
            Container(
                margin: const EdgeInsets.only(bottom: 80.0),
                height: 180,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      HomeScreenButton(
                        buttonAction: () {
                          navigateToScreen(context, const ListScreen());
                        },
                        buttonText: 'Get Started',
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        // Space buttons evenly
                        children: [
                          HomeScreenButton(
                            buttonAction: () {
                              navigateToScreen(context, const ListScreen());
                            },
                            buttonText: 'Sign In',
                          ),
                          HomeScreenButton(
                            buttonAction: () {
                              navigateToScreen(context, const ListScreen());
                            },
                            buttonText: 'Sign Up',
                          ),
                        ],
                      ),
                    ]))
          ],
        ),
      ),
    );
  }
}
