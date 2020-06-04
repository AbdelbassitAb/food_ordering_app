import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_delivery_app/constants.dart';

AppBar HomeAppBar(BuildContext context) {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.white,
    leading: IconButton(
      icon: SvgPicture.asset('assets/icons/menu.svg'),
      color: ksecondaryColor,
    ),
    centerTitle: true,
    title: RichText(
      text: TextSpan(
        style: Theme.of(context)
            .textTheme
            .title
            .copyWith(fontWeight: FontWeight.bold),
        children: [
          TextSpan(
              text: 'Punk',
              style: TextStyle(
                color: ksecondaryColor,
              )),
          TextSpan(
              text: 'Food',
              style: TextStyle(
                color: kPrimaryColor,
              ))
        ],
      ),
    ),
    actions: <Widget>[
      IconButton(
        icon: SvgPicture.asset('assets/icons/notification.svg'),
        onPressed: () {},
      )
    ],
  );
}
