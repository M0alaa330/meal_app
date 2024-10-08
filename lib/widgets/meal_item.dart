import 'package:flutter/material.dart';

class MealItem extends StatelessWidget {
  const MealItem(
      {super.key, required this.image, required this.name, required this.id});
  final String? image;
  final String? name;
  final String? id;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        width: double.infinity,
        height: 150,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(topRight: Radius.circular(15)),
          color: Colors.teal[300],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: double.infinity,
              width: 150,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage(image!),
                fit: BoxFit.fill,
              )),
            ),
            Text(
              name ?? 'Unnamed',
              style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, "mealdetails", arguments: id);
              },
              icon: const Icon(
                Icons.arrow_right_alt_outlined,
                size: 30,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
