import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static const String routeName = "homeScreen";

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
          'assets/images/home_background.png',
        ),
        Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.add),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.add),
                label: '',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
