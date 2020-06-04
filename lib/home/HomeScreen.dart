import 'package:flutter/material.dart';
import 'package:food_delivery_app/Components/navigationBar.dart';
import 'components/body.dart';
import 'components/homeAppBar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: HomeAppBar(context),
      body: Body(),
      bottomNavigationBar: NavigationBar(),
    );
  }
}
