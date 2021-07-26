import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import './models/category.dart' as C;
import './models/food.dart';
const FAKE_CATEGORY =  const [
  C.Category(id: 1, content: 'Chicken', color: Colors.pinkAccent,image: 'chicken.jpg'),
  C.Category(id: 2, content: 'Burgers', color: Colors.greenAccent,image: 'burger.jpeg'),
  C.Category(id: 3, content: 'Rice Bowlz', color: Colors.orange,image: 'ricebowl.jpg'),
  C.Category(id: 4, content: 'Snacks', color: Colors.red,image: 'SNACK-BOX.png'),
  C.Category(id: 5, content: 'Bevarages', color: Colors.deepPurple,image: 'bevarage.jpg'),

];

// ignore: non_constant_identifier_names
var FAKE_FOODS = [
  Food(image: "https://online.kfc.co.in/Content/OnlineOrderingImages/Menu/Items/wednesday-bucket.jpg?v=15.98",
  foodName: 'Bucket',
  price: 599,
  categoryId: 1),
  Food(image: "https://online.kfc.co.in/Content/OnlineOrderingImages/Menu/Items/CAT86-PR00000732.jpg?v=15.98",
      foodName: 'Stay Home Bucket',
      price: 599,
      categoryId: 1),
  Food(image: "https://online.kfc.co.in/Content/OnlineOrderingImages/Menu/Items/CAT86-PR00000447.jpg?v=15.98",
      foodName: 'Friendship Bucket',
      price: 599,
      categoryId: 1),
  Food(image: "https://online.kfc.co.in/Content/OnlineOrderingImages/Menu/Items/CAT86-PR00000447.jpg?v=15.98",
      foodName: 'Bucket for 2',
      price: 599,
      categoryId: 1),
  Food(image: "https://online.kfc.co.in/Content/OnlineOrderingImages/Menu/Items/wednesday-bucket.jpg?v=15.98",
      foodName: 'Bucket',
      price: 599,
      categoryId: 1),
  Food(image: "https://online.kfc.co.in/Content/OnlineOrderingImages/Menu/Items/big-12.jpg?v=15.98",
      foodName: 'Big 12',
      price: 599,
      categoryId: 1),
  Food(image: "https://online.kfc.co.in/Content/OnlineOrderingImages/Menu/Items/big-12.jpg?v=15.98",
      foodName: '1 Double Down Burger',
      price: 599,
      categoryId: 2),
  Food(image: "https://online.kfc.co.in/Content/OnlineOrderingImages/Menu/Items/CAT99-PR00001003.jpg?v=15.98",
      foodName: 'Tandoori Zinger Burger',
      price: 170,
      categoryId: 2),
  Food(image: "https://online.kfc.co.in/Content/OnlineOrderingImages/Menu/Items/CAT99-PR00001024.jpg?v=15.98",
      foodName: 'Veg Krispers and Rice Combo',
      price: 399,
      categoryId: 2),
  Food(image: "https://online.kfc.co.in/Content/OnlineOrderingImages/Menu/Items/CAT99-PR00001023.jpg?v=15.98",
      foodName: '2 Veg Krispers Meal',
      price: 599,
      categoryId: 2)

];