import 'package:flutter/material.dart';
import 'package:food_delivery_app/details/components/details_screen.dart';
import 'package:food_delivery_app/home/components/Item_Card.dart';

class ItemList extends StatelessWidget {
  const ItemList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          Item_Card(
            picture: "assets/icons/burger_beer.svg",
            title: "Burger & Beer",
            shopeName: "MacDonald's",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Details_screen();
                  },
                ),
              );
            },
          ),
          Item_Card(
            picture: "assets/icons/chinese_noodles.svg",
            title: "Chinese & Noodles",
            shopeName: "Wendys",
            press: () {},
          ),
          Item_Card(
            picture: "assets/icons/burger_beer.svg",
            title: "Burger & Beer",
            shopeName: "MacDonald's",
            press: () {},
          )
        ],
      ),
    );
  }
}
