import 'package:flutter/material.dart';
import 'package:meal_app/model/category.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.c1});

  final Category c1;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.teal[100],
      onTap: () {
        Navigator.pushNamed(context, "mealscreen",
            arguments: {"name": c1.name, "id": c1.id});
      },
      child: Padding(
        padding: const EdgeInsets.only(
          top: 10,
          left: 10,
          right: 10,
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Container(
            alignment: Alignment.bottomCenter,
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                  image: AssetImage(
                    c1.image,
                  ),
                  fit: BoxFit.fill),
            ),
            child: Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.black54,
              ),
              child: Center(
                child: Text(
                  c1.name,
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
