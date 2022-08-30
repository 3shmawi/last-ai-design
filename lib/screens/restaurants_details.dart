import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';

// Ramses Hilton
// 1115 Nile Corniche, 12344 , Cairo
// Set your vacation to the tune of summery delight at Ramses Hilton. Rooted at the core of Egyptian’s metropolis, Cairo, on the east riverbank of the Nile, this majestic hotel is the perfect palatial re...
class RestaurantsDetails extends StatefulWidget {
  const RestaurantsDetails({
    Key? key,
  }) : super(key: key);

  @override
  State<RestaurantsDetails> createState() => _RestaurantsDetailsState();
}

class _RestaurantsDetailsState extends State<RestaurantsDetails> {
  double value = 4.5;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 60.0),
                  const Text(
                    'Restaurants',
                    style: TextStyle(
                      fontSize: 42.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFF17532),
                    ),
                  ),
                  const SizedBox(height: 15.0),
                  Container(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(15)),
                    child: Image.asset('assets/restaurants.jpg',
                        height: 300.0,
                        width: double.infinity,
                        fit: BoxFit.cover),
                  ),
                  const SizedBox(height: 20.0),
                  const Text('Ramses Hilton',
                      style:
                          TextStyle(color: Color(0xFF575E67), fontSize: 24.0)),
                  const SizedBox(height: 10.0),
                  RatingStars(
                    value: value,
                    onValueChanged: (v) {
                      //
                      setState(() {
                        value = v;
                      });
                    },
                    starBuilder: (index, color) => Icon(
                      Icons.star,
                      color: color,
                    ),
                    starCount: 5,
                    starSize: 20,
                    valueLabelColor: const Color(0xff9b9b9b),
                    valueLabelTextStyle: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        fontSize: 12.0),
                    valueLabelRadius: 10,
                    maxValue: 5,
                    starSpacing: 2,
                    maxValueVisibility: true,
                    valueLabelVisibility: true,
                    animationDuration: const Duration(milliseconds: 1000),
                    valueLabelPadding:
                        const EdgeInsets.symmetric(vertical: 1, horizontal: 8),
                    valueLabelMargin: const EdgeInsets.only(right: 8),
                    starOffColor: const Color(0xffe7e8ea),
                    starColor: Colors.yellow,
                  ),
                  const SizedBox(height: 20.0),
                  SizedBox(
                    width: MediaQuery.of(context).size.width - 50.0,
                    child: const Text(
                      'Set your vacation to the tune of summery delight at Ramses Hilton. Rooted at the core of Egyptian’s metropolis, Cairo, on the east riverbank of the Nile, this majestic hotel is the perfect palatial re...',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Color(0xFFB4B8B9),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios_new,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
