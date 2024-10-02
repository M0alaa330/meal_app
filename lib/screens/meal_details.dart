import 'package:flutter/material.dart';
import 'package:meal_app/model/data.dart';
import 'package:meal_app/model/meal.dart';

class MealDetails extends StatelessWidget {
  const MealDetails({
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
            child: Text(meal.title, style: TextStyle(color: Colors.white))),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              meal.imageUrl,
              width: double.infinity,
              height: 250,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    meal.title,
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    meal.description,
                    style: TextStyle(fontSize: 15),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Price: \$${meal.salary}",
                        style: TextStyle(fontSize: 15),
                      ),
                      Text(
                        "Time:${meal.time}min",
                        style: TextStyle(fontSize: 15),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
