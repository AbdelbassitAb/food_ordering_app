import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_delivery_app/constants.dart';
import 'package:food_delivery_app/details/components/components/Item_Image.dart';
import 'package:food_delivery_app/details/components/components/order_button.dart';
import 'package:food_delivery_app/home/HomeScreen.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class Details_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return HomeScreen();
                },
              ),
            );
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: SvgPicture.asset('assets/icons/share.svg'),
          ),
          IconButton(
            icon: SvgPicture.asset('assets/icons/more.svg'),
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          ItemImage(
            imgSrc: "assets/images/burger.png",
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(20),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Column(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      shope_name('Macdonalds'),
                      SizedBox(height: 5),
                      title_price_rating(
                        name: 'Cheese Burger',
                        price: 15,
                        rating: 4,
                        reviews: 24,
                        onRatingChanged: (value) {},
                      ),
                      SizedBox(height: 15),
                      Text(
                        "Nowadays, making printed materials have become fast, easy and simple. If you want your promotional material to be an eye-catching object, you should make it colored. By way of using inkjet printer this is not hard to make. An inkjet printer is any printer that places extremely small droplets of ink onto paper to create an image.",
                        style: TextStyle(
                          height: 1.5,
                        ),
                      ),
                      SizedBox(height: size.height * 0.1),
                      // Free space  10% of total height
                      OrderButton(
                        size: size,
                        press: () {},
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Row shope_name(String name) {
    return Row(
      children: <Widget>[
        Icon(
          Icons.location_on,
          color: ksecondaryColor,
        ),
        SizedBox(width: 10),
        Text(name),
      ],
    );
  }
}

class title_price_rating extends StatelessWidget {
  final String name;
  final int price, reviews;
  final double rating;
  final RatingChangeCallback onRatingChanged;
  const title_price_rating({
    this.name,
    this.rating,
    this.price,
    this.reviews,
    this.onRatingChanged,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                name,
                style: Theme.of(context).textTheme.headline,
              ),
              SizedBox(height: 10),
              Row(
                children: <Widget>[
                  SmoothStarRating(
                    borderColor: kPrimaryColor,
                    rating: rating,
                    isReadOnly: true,
                    onRated: onRatingChanged,
                  ),
                  SizedBox(width: 10),
                  Text('$reviews Reviews'),
                ],
              )
            ],
          ),
        ),
        priceTag(context, price: price)
      ],
    );
  }
}

ClipPath priceTag(BuildContext context, {int price}) {
  return ClipPath(
    clipper: PricerCliper(),
    child: Container(
      alignment: Alignment.topCenter,
      padding: EdgeInsets.symmetric(vertical: 15),
      height: 66,
      width: 65,
      color: kPrimaryColor,
      child: Text(
        "\$$price",
        style: Theme.of(context)
            .textTheme
            .title
            .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
      ),
    ),
  );
}

class PricerCliper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    double ignoreHeight = 20;
    path.lineTo(0, size.height - ignoreHeight);
    path.lineTo(size.width / 2, size.height);
    path.lineTo(size.width, size.height - ignoreHeight);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
