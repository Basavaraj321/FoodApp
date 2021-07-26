import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_app/fake_data.dart';
import 'package:food_app/counter_event.dart';
import 'models/category.dart';
import 'models/food.dart';
import 'package:fluttertoast/fluttertoast.dart';


// ignore: must_be_immutable
class FoodPage extends StatelessWidget {
  Category category;
  FoodPage({required this.category});

  
  //Filter foods
  void _showToast(msg) =>
      Fluttertoast.showToast(
          msg: "$msg Added to Cart",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          backgroundColor: Colors.black87,
          textColor: Colors.white,
          fontSize: 16.0
      );

  Container _getNavBar() {
    return Container(
        height: 47,
        child: Row(
          children: [
            Padding(padding: EdgeInsets.only(left: 10),
              child: Align(alignment: Alignment.centerLeft, child:
              Text('Total :', style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold
              ),),),),
            Padding(padding: EdgeInsets.only(left: 5),
              child: Align(alignment: Alignment.centerLeft, child:
              Text('Rs:', style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold
              ),),),),
            Padding(padding: EdgeInsets.only(left: 150, bottom: 10),
              child: Align(
                alignment: Alignment.centerRight,
                child: OutlinedButton(onPressed: () {},
                  child: Text('MOVE TO CART', style: TextStyle(
                      color: Colors.white,
                      fontSize: 12
                  ),),
                  style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.red,
                      shadowColor: Colors.black87,
                      elevation: 8,
                      fixedSize: Size(125, 15)
                  ),
                ),
              ),),


          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    List<Food> foods = FAKE_FOODS.where((food) =>
    food.categoryId == this.category.id).toList();
    return MaterialApp(
        home: Scaffold(
            appBar:
            AppBar(
              centerTitle: true,
              backgroundColor: Colors.white,
              title: Text('Category ${this.category.content}', style: TextStyle(
                  fontFamily: 'MyFont',
                  color: Colors.red[400],
                  fontWeight: FontWeight.bold,
                  shadows: [
                    BoxShadow(
                        color: Colors.black87,
                        spreadRadius: 2,
                        blurRadius: 2
                    )
                  ]
              ),),
            ),
            bottomNavigationBar: _getNavBar(),
            body: Container(
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black87.withOpacity(0.01),
                        spreadRadius: 2,
                        blurRadius: 2
                    )
                  ]
              ),
              padding: EdgeInsets.all(12.0),
              child: GridView.builder(
                  itemCount: foods.length,
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 300,
                    childAspectRatio: 3 / 4.5,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    Food food = foods[index];
                    return
                      Card(
                        margin: EdgeInsets.only(bottom: 5),
                        shadowColor: Colors.black87,
                        elevation: 2,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.network(food.image),
                            SizedBox(height: 2),
                            Padding(padding: EdgeInsets.only(left: 5),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(food.foodName, style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    shadows: [
                                      BoxShadow(
                                          color: Colors.black87,
                                          spreadRadius: 2,
                                          blurRadius: 2
                                      )
                                    ]
                                ),),
                              ),),
                            SizedBox(height: 8,),
                            Padding(padding: EdgeInsets.only(right: 5),
                              child: Align(
                                alignment: Alignment.bottomRight,
                                child: Text('₹ ${food.price.toString()}',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      shadows: [
                                        BoxShadow(
                                            color: Colors.black87,
                                            spreadRadius: 2,
                                            blurRadius: 2
                                        )
                                      ]
                                  ),),
                              ),),
                            Padding(padding: EdgeInsets.only(right: 5),
                              child: Align(
                                  alignment: Alignment.bottomRight,
                                  child: OutlinedButton(onPressed: () {
                                    print(food.foodName);
                                    _showToast(food.foodName);
                                  },
                                    child: Text('ADD TO CART', style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12
                                    ),),
                                    style: OutlinedButton.styleFrom(
                                        backgroundColor: Colors.red,
                                        shadowColor: Colors.black87,
                                        elevation: 8,
                                        fixedSize: Size(125, 15)
                                    ),
                                  )
                              ),)
                          ],
                        ),
                      );
                  }),
            )
        )

    );
  }
}

