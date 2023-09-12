import 'package:flutter/material.dart';
import 'package:task_one/widgets/containers.dart';

// List of Names of items to be displayed in this screen
final List<String> catNames = [
  'Idea',
  'Food',
  'Work',
  'Sport',
  'Music',
  'Health',
  'Cars',
];
final List<String> iconNames = [
  'assets/idea_icon.png',
  'assets/food_icon.png',
  'assets/work_icon.png',
  'assets/sport_icon.png',
  'assets/music_icon.png',
  'assets/health_icon.png',
  'assets/cars_icon.png',
];

// Function to navigate to a screen by class name
void navigateToScreen(BuildContext context, Widget screen) {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (context) => screen),
  );
}

// List Screen Classes (Stateful)
class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

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
            "Task One",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: ListView.separated(
          padding: const EdgeInsets.all(12),
          itemCount: catNames.length,
          itemBuilder: (BuildContext context, int index) {
            return ListContainer(
                catName: catNames[index], iconName: iconNames[index]);
          },
          separatorBuilder: (BuildContext context, int index) =>
              const Divider(),
        ),
      ),
    );
  }
}
