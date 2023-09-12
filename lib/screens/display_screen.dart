import 'package:flutter/material.dart';

//-------------------------------------------------------------------------//

// // Stateful Widget for the Category display screen
// class CatDisplayScreen extends StatefulWidget {
//   final String category;
//
//   const CatDisplayScreen({super.key, required this.category});
//
//   @override
//   State<CatDisplayScreen> createState() => _CatDisplayScreenState();
// }
//
// class _CatDisplayScreenState extends State<CatDisplayScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         // Main background color
//         backgroundColor: Colors.white,
//         // The top bar in the app
//         appBar: AppBar(
//           centerTitle: true,
//           title: const Text("Task One"),
//         ),
//         body: Center(
//           child: Text(
//             widget.category,
//             style: const TextStyle(
//               fontSize: 72.0, // Adjust the font size as needed
//               fontFamily: 'PermanentMarker'
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// Stateless Widget for the Category display screen
class CatDisplayScreen extends StatelessWidget {
  final String category;

  const CatDisplayScreen({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // Main background color
        backgroundColor: Colors.white,
        // The top bar in the app
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "Display Screen",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: Center(
          child: Text(
            category,
            style: const TextStyle(
                fontSize: 48.0, // Adjust the font size as needed
                fontFamily: 'PermanentMarker'),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
