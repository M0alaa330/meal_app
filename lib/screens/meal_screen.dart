import 'package:flutter/material.dart';
import 'package:meal_app/model/data.dart';
import 'package:meal_app/model/meal.dart';
import 'package:meal_app/widgets/meal_item.dart';

class MealScreen extends StatelessWidget {
  const MealScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> data =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    String id = data["id"];
    List<Meal> mealfilter = meals.where((value) {
      return value.categoryNumber.contains(id);
    }).toList();
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
              )),
          title: Center(
            child: Text(
              data["name"],
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        body: ListView.builder(
            itemCount: mealfilter.length,
            itemBuilder: (context, index) {
              return MealItem(
                  image: mealfilter[index].imageUrl,
                  name: mealfilter[index].title,
                  id: mealfilter[index].categoryNumber);
            }));
  }
}
