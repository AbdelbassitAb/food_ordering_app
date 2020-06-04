import 'package:flutter/material.dart';
import 'package:food_delivery_app/home/components/Card_List.dart';
import 'package:food_delivery_app/home/components/Category_list.dart';
import 'package:food_delivery_app/home/components/SearchBox.dart';
import 'package:food_delivery_app/home/components/cards_offers.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: <Widget>[
          SearchBox(),
          Category_list(),
          ItemList(),
          Card_Offers(),
        ],
      ),
    );
  }
}
