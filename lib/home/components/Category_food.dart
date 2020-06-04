import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants.dart';

class Category_Item extends StatelessWidget {
  final String title;
  final bool isActive;
  final Function press;

  const Category_Item({Key key, this.title, this.isActive = false, this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        child: Column(
          children: <Widget>[
            Text(
              title,
              style: isActive
                  ? TextStyle(
                      fontWeight: FontWeight.bold,
                      color: kTextColor,
                    )
                  : TextStyle(fontSize: 12),
            ),
            SizedBox(
              height: 5,
            ),
            if (isActive)
              Container(
                height: 3,
                width: 22,
                color: kPrimaryColor,
              ),
          ],
        ),
      ),
    );
  }
}
