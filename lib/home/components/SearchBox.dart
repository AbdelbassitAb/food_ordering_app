import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_delivery_app/constants.dart';

Container SearchBox() {
  return Container(
    margin: EdgeInsets.all(20),
    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        border: Border.all(
          color: ksecondaryColor.withOpacity(0.32),
        )),
    child: TextField(
      decoration: InputDecoration(
          border: InputBorder.none,
          icon: SvgPicture.asset('assets/icons/search.svg'),
          hintText: 'Search here',
          hintStyle: TextStyle(color: ksecondaryColor)),
    ),
  );
}
