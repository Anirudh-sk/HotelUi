import 'package:flutter/material.dart';
import 'package:hotel/widgets/FoodCard.dart';
import '../data/CategoryData.dart';
import '../models/Category.dart';

class FoodCategory extends StatelessWidget {
  final List<Category> _categories = categories;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _categories.length,
        itemBuilder: (BuildContext context, int index) {
          return FoodCard(
            categoryName: _categories[index].categoryName,
            imgPath: _categories[index].imgPath,
            numberOfItems: _categories[index].numberOfItems,
          );
        },
      ),
    );
  }
}
