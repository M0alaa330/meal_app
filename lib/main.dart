import 'package:flutter/material.dart';
import 'package:meal_app/screens/home_screen.dart';
import 'package:meal_app/screens/meal_details.dart';
import 'package:meal_app/screens/meal_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "mealscreen": (context) => MealScreen(),
        "mealdetails": (context) => MealDetails()
      },
      home: HomeScreen(),
    );
  }
}
