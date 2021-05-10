import 'package:flutter/material.dart';
import 'package:hotel/pages/FavouratesPage.dart';
import 'package:hotel/pages/ProfilePage.dart';

import '../pages/HomePage.dart';
import 'package:hotel/pages/OrderPage.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int current = 0;

  List<Widget> pages;
  Widget currentPage;

  HomePage homepage;
  OrderPage orderPage;
  FavouratePage favouratePage;
  ProfilePage profilePage;

  @override
  void initState() {
    super.initState();
    homepage = HomePage();
    orderPage = OrderPage();
    favouratePage = FavouratePage();
    profilePage = ProfilePage();
    pages = [homepage, orderPage, favouratePage, profilePage];

    currentPage = homepage;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          fixedColor: Colors.redAccent,
          currentIndex: current,
          onTap: (int index) {
            setState(() {
              current = index;
              currentPage = pages[index];
            });
          },
          type: BottomNavigationBarType.shifting,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Colors.lightGreen,
                ),
                title: Text('Home')),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.shopping_basket,
                  color: Colors.lightGreen,
                ),
                title: Text('ORDERS')),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.favorite,
                  color: Colors.lightGreen,
                ),
                title: Text('FAVOURATES')),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  color: Colors.lightGreen,
                ),
                title: Text('ACCOUNT')),
          ]),
      body: currentPage,
      
    );
  }
}
