import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 3,
      borderRadius: BorderRadius.circular(50),
      
      child: TextField(
        cursorColor: Colors.redAccent,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 32,vertical: 14),
          focusColor: Colors.redAccent,
          hintText: "Search for Food",
          suffixIcon: Material(
            
            elevation: 4,
            borderRadius: BorderRadius.circular(50),

            child :
              Icon(
                Icons.search,
                color: Colors.redAccent,                
              ),
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
