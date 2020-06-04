import 'package:flutter/material.dart';
import 'package:food_delivery_app/home/components/Card_List.dart';
import 'package:food_delivery_app/home/components/Category_food.dart';
import 'package:food_delivery_app/home/components/SearchBox.dart';
import 'package:food_delivery_app/home/components/cards_offers.dart';

SingleChildScrollView Category_list() {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      children: <Widget>[
        Category_Item(
          title: 'Combo Meal',
          isActive: true,
          press: () {},
        ),
        Category_Item(
          title: 'Bergers',
          isActive: false,
          press: () {},
        ),
        Category_Item(
          title: 'Chicken',
          isActive: false,
          press: () {},
        ),
        Category_Item(
          title: 'Chicken and Slides',
          isActive: false,
          press: () {},
        ),
      ],
    ),
  );
}
