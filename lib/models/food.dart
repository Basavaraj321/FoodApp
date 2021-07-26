import 'dart:math';
import 'package:flutter/material.dart';

class Food{
  late int id;
  final String foodName;
  final int price;
  final String image;
  final int categoryId;

  Food({
    required this.categoryId,
    required this.foodName,
    required this.price,
    required this.image
  })
  {
    this.id = Random().nextInt(100);
  }
}