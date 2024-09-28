import 'package:flutter/material.dart';
import 'package:meal_app/model/data.dart';
import 'package:meal_app/model/meal.dart';

class MealDetails extends StatelessWidget {
  MealDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var id = ModalRoute.of(context)!.settings.arguments as String;

    Meal meal = meals.firstWhere((value) {
      return value.id == id;
    });

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 20,
          ),
        ),
        title: Center(
            child:
                Text("${meal.title}", style: TextStyle(color: Colors.white))),
      ),
      body: Center(
        child: Text("${meal.imageUrl}"),
      ),
    );
  }
}
