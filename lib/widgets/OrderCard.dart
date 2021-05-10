import 'package:flutter/material.dart';

class OrderCard extends StatelessWidget {
  const OrderCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(padding: EdgeInsets.only(top: 10)),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: Color(0xffd3d3d3),
              ),
              borderRadius: BorderRadius.circular(30),
            ),
            height: 78,
            width: 44,
            child: Column(
              children: <Widget>[
                InkWell(
                    onTap: () {},
                    child: Icon(
                      Icons.arrow_drop_up,
                      size: 22,
                      color: Colors.cyan[600],
                    )),
                Text(
                  "0",
                  style: TextStyle(fontSize: 18, color: Colors.brown[600]),
                ),
                InkWell(
                    onTap: () {},
                    child: Icon(
                      Icons.arrow_drop_down,
                      size: 22,
                      color: Colors.cyan[600],
                    )),
              ],
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              boxShadow: [
                BoxShadow(
                    color: Colors.black, blurRadius: 30, offset: Offset(5, 5)),
              ],
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/burger.jpg")),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Burger",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.brown[800],
                    fontSize: 20),
              ),
              Text(
                "3.5",
                style: TextStyle(color: Colors.blueGrey[400]),
              ),
              Text(
                "Rs. 60",
                style: TextStyle(
                    color: Colors.green[700], fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(
            width: 70,
          ),
          GestureDetector(
              onTap: () {
                print("closed");
              },
              child: Icon(
                Icons.cancel,
                color: Colors.redAccent,
              ))
        ],
      ),
    );
  }
}
