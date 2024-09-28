import 'package:meal_app/model/category.dart';
import 'package:meal_app/model/meal.dart';

const List<Category> categories = [
  Category(id: "c1", name: "Chinese", image: "assets/images/chinese.jpg"),
  Category(id: "c2", name: "Indian", image: "assets/images/indian.jpg"),
  Category(
      id: "c3", name: "Oriental Meals", image: "assets/images/oriental.jpg"),
  Category(id: "c4", name: "Pasta", image: "assets/images/pasta.jpg"),
  Category(id: "c5", name: "sandwich", image: "assets/images/sand.jpg"),
  Category(id: "c6", name: "SaLads", image: "assets/images/salad.jpg"),
  Category(id: "c7", name: "RICE DISHES", image: "assets/images/Rice.jpg"),
  Category(id: "c8", name: "DESSERT", image: "assets/images/desatr.jpg"),
];
const List<Meal> meals = [
  Meal(
      id: "m1",
      title: "LAMP CHOPS",
      imageUrl: "assets/images/lampchops.jpg",
      salary: "150",
      time: "35",
      description:
          "Fillet Steak round 275gm,topped with bron pepper sauce served with your choice of 2sides",
      categoryNumber: "c3"),
  Meal(
      id: "m2",
      title: "BUTTER CHICKEN",
      imageUrl: "assets/images/butterchicken.jpg",
      salary: "90",
      time: "25",
      description: "----------------",
      categoryNumber: "c2"),
  Meal(
      id: "m3",
      title: "ALFREDO",
      imageUrl: "assets/images/alfredo.jpg",
      salary: "60",
      time: "25",
      description: "----------------",
      categoryNumber: "c4"),
  Meal(
      id: "m4",
      title: "steak",
      imageUrl: "assets/images/steak.jpg",
      salary: "150",
      time: "30",
      description: "----------------",
      categoryNumber: "c3"),
  Meal(
      id: "m5",
      title: "Smoked Cheesy ",
      imageUrl: "assets/images/smoked_cheesy.jpg",
      salary: "90",
      time: "25",
      description: "----------------",
      categoryNumber: "c7"),
  Meal(
      id: "m6",
      title: "Lamp Biryani",
      imageUrl: "assets/images/lamp_biryani.jpg",
      salary: "90",
      time: "30",
      description: "----------------",
      categoryNumber: "c2"),
  Meal(
      id: "m7",
      title: "ShiSh Tawook Rice",
      imageUrl: "assets/images/shish_Tawook.jpg",
      salary: "99",
      time: "30",
      description: "----------------",
      categoryNumber: "c7"),
  Meal(
      id: "m8",
      title: "Lamp shank",
      imageUrl: "assets/images/lamp_shank.jpg",
      salary: "130",
      time: "35",
      description: "----------------",
      categoryNumber: "c3")
];
