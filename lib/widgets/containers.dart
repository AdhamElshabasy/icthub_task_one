import 'package:flutter/material.dart';
import 'package:task_one/screens/cat_display_screen.dart';

// Function to navigate to a screen by class name
void navigateToScreen(BuildContext context, Widget screen) {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (context) => screen),
  );
}

// Function to interpret hex code colors
Color hexToColor(String hexColor) {
  // Remove the '#' character if present
  hexColor = hexColor.replaceAll('#', '');

  // Parse the hex color code and add an alpha value (fully opaque)
  return Color(int.parse('0xFF$hexColor'));
}

// The Container used in the list screen
class ListContainer extends StatelessWidget {
  // Variables to store the parameters
  final String catName;
  final String iconName;

  const ListContainer(
      {super.key, required this.catName, required this.iconName});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){navigateToScreen(context, CatDisplayScreen(category: catName));},
      child: Container(
        padding: const EdgeInsets.all(16.0),
        width: MediaQuery.sizeOf(context).width - 50,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: hexToColor("#ededed"),
        ),
        child: Row(children: [
          Image.asset(
            iconName,
          ),
          const SizedBox(
            width: 15,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                catName,
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    fontFamily: 'Righteous'),
              ),
              const Text(
                'Tap to select',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
              )
            ],
          ),
          const Expanded(
            child: Align(
              alignment: Alignment.centerRight,
              child: Icon(
                Icons.keyboard_arrow_right,
                color: Colors.black,
                size: 40,
              ),
            ),
          )
        ]),
      ),
    );
  }
}
