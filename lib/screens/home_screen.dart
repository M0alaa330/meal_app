import 'package:flutter/material.dart';
import 'package:meal_app/model/data.dart';
import 'package:meal_app/widgets/category_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Center(
              child: Text(
            "Bremar",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          )),
        ),
        body: ListView.builder(
            itemCount: categories.length,
            itemBuilder: (context, index) {
              return CategoryItem(
                c1: categories[index],
              );
            }));
  }
}
