import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../detailscreen.dart';

class sliderwidget extends StatelessWidget {
  const sliderwidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
    items: [
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ReservationPage(),));
        },
        child: Container(
          padding: EdgeInsets.only(left: 10, bottom: 24),
          margin: EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            image: DecorationImage(
              image: AssetImage('assets/buy1get1.jpg'),
              fit: BoxFit.cover)
          ),
        ),
      ),
      
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ReservationPage(),));
        },
        child: Container(
          padding: EdgeInsets.only(left: 20, bottom: 24),
          margin: EdgeInsets.all(6),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            image: DecorationImage(
              image: AssetImage('assets/offer20.png'),
              fit: BoxFit.cover)
          ),
        ),
      ),
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ReservationPage(),));
        },
        child: Container(
          padding: EdgeInsets.only(left: 20, bottom: 24),
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            image: DecorationImage(
              image: AssetImage('assets/offer30.jpg'),
              fit: BoxFit.cover)
          ),
        ),
      ),
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ReservationPage(),));
        },
        child: Container(
          padding: EdgeInsets.only(left: 20, bottom: 24),
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            image: DecorationImage(
              image: AssetImage('assets/offer50.png'),
              fit: BoxFit.cover)
          ),
        ),
      ),
    ], 
    options: CarouselOptions(
      enlargeCenterPage: true,
      autoPlay: true,
    ));
  }
}