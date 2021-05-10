import 'package:flutter/material.dart';

class FoodCard extends StatelessWidget {
  final String categoryName;
  final String imgPath;
  final int numberOfItems;

  FoodCard({this.categoryName, this.imgPath, this.numberOfItems});

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.yellow[100],
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: <Widget>[
              Image(
                image: AssetImage(imgPath),
                height: 64,
                width: 64,
              ),
              SizedBox(
                width: 30,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    categoryName,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                        color: Colors.blueGrey),
                  ),
                  Text("$numberOfItems Types")
                ],
              ),
            ],
          ),
        ));
  }
}
