import 'package:flutter/material.dart';

import 'package:hotel/widgets/OrderCard.dart';

class OrderPage extends StatefulWidget {
  OrderPage({Key key}) : super(key: key);

  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'CART',
          style:
              TextStyle(color: Colors.brown[600], fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: ListView(
        padding: EdgeInsets.all(15),
        children: <Widget>[
          Column(
            children: <Widget>[OrderCard(), OrderCard(), OrderCard()],
          ),
        ],
      ),
      bottomNavigationBar: _buildTotalContainer(),
    );
  }
}

Widget _buildTotalContainer() {
  return Container(
    height: 300,
    child: Column(
      children: <Widget>[
        ListTile(
          leading: Text(
            'Cart Total',
            style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: Colors.brown[400]),
          ),
          dense: true,
          trailing: Text(
            'Rs. 120',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
        ListTile(
          leading: Text(
            'Tax',
            style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: Colors.brown[400]),
          ),
          dense: true,
          trailing: Text(
            'Rs. 20',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
        ListTile(
          dense: true,
          leading: Text(
            'Discount',
            style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: Colors.brown[400]),
          ),
          trailing: Text(
            'Rs. 30',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
        Divider(
          color: Colors.grey,
        ),
        ListTile(
          leading: Text(
            'Sub Total',
            style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: Colors.brown[400]),
          ),
          trailing: Text(
            'Rs. 130',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
        Divider(
          color: Colors.grey,
        ),
        Container(
          width: 280,
          height: 50,
          decoration: BoxDecoration(
              color: Colors.brown, borderRadius: BorderRadius.circular(30)),
          child: Center(
              child: Text('Proceed To Checkout',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white))),
        )
      ],
    ),
  );
}
