import 'package:flutter/material.dart';

class HomeTop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'ITHU',
                style: TextStyle(
                  color: Colors.brown,
                  fontWeight: FontWeight.bold,
                  fontSize: 32.0,
                ),
              ),
              Text(
                'NAMMA',
                style: TextStyle(
                  color: Colors.brown,
                  fontWeight: FontWeight.bold,
                  fontSize: 32.0,
                ),
              ),
              Text(
                'VEEDU',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.brown,
                  fontSize: 32.0,
                ),
              ),
            ],
          ),
          Icon(
            Icons.notifications_none,
            size: 35,
            color: Colors.redAccent,
          ),
        ],
      ),
    );
  }
}
