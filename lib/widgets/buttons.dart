import 'package:flutter/material.dart';

//-------------------------------------------------------------------------//

// The Blue button used in the home screen
class HomeScreenButton extends StatelessWidget {
  // Variables to store the parameters for the button
  final VoidCallback buttonAction;
  final String buttonText;

  // The function constructor
  const HomeScreenButton(
      {super.key, required this.buttonAction, required this.buttonText});

  // Override to create and send a button
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: buttonAction,
      style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 12)),
      child: Text(
        buttonText,
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
    );
  }
}
