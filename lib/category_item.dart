 import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_app/AnimatedPageRoute.dart';
import 'package:food_app/counter_event.dart';
import 'models/category.dart';
import 'foodpage.dart';



// ignore: must_be_immutable
class CategoryItem extends StatelessWidget{
  Category category;
  CategoryItem({required this.category});
  @override
  Widget build(BuildContext context) {
    Color _color = this.category.color;
    // TODO: implement build
    return InkWell(
        onTap: (){
          print('Tapped  ${this.category.content}');
          Navigator.of(context).push(
              AnimatedPageRoute(widget: FoodPage(category: this.category))
          );
        },
        splashColor: Colors.black87,
        child: Container(
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[

              Text(this.category.content, style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.black,
                  fontFamily: 'MyFont'
              ),)
            ],

          ),

          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  _color.withOpacity(0.3),
                  _color
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight
            ),
            borderRadius: BorderRadius.circular(20),
            color: _color,
          ),

        )
    );
  }
}