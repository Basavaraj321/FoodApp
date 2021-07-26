import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/category_item.dart';
import 'fake_data.dart';

class CategoryPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(10.0),
      children: FAKE_CATEGORY.map((eachCategory) => CategoryItem(category: eachCategory)).toList(),


      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 300,
        childAspectRatio: 3/3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
    ),
      
    );

  }

}