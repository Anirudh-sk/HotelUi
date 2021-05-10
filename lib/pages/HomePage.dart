import 'package:flutter/material.dart';
import 'package:hotel/widgets/BoughtFoods.dart';
import 'package:hotel/widgets/FoodCategory.dart';
import 'package:hotel/widgets/HomeTop.dart';
import 'package:hotel/widgets/Search.dart';

import '../data/FoodData.dart';
import '../models/Food.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<FoodData> _foods = foods;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(top: 40, left: 20, right: 20),
        children: <Widget>[
          HomeTop(),
          Search(),
          SizedBox(
            height: 15,
          ),
          FoodCategory(),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Top Selling Today",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.brown),
              ),
              GestureDetector(
                onTap: () => {},
                child: Text(
                  "View All",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Column(
            children: _foods.map(_buildFoodItems).toList(),
          ),
        ],
      ),
    );
  }

  Widget _buildFoodItems(FoodData food) {
    return Container(
      margin: EdgeInsets.all(10),
      child: BoughtFoods(
        category: food.category,
        price: food.price,
        imagePath: food.imagePath,
        name: food.name,
        ratings: food.ratings,
        id: food.id,
      ),
    );
  }
}
