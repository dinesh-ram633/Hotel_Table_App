import 'package:flutter/material.dart';
class ShopList{
  late final String name;
  late final String image;
  late final double rating;
  late final String address;
  late final String openinghours;

  ShopList(
    {
      required this.name,
      required this.image,
      required this.rating,
      required this.address,
      required this.openinghours,

    }
  );
  static List<ShopList> shopdetail =[
   ShopList(name:"Vasanta Bhavan",
    image: "assets/vasantabhavan.jpg",
    rating: 5, 
    address: "karapakkam,OMR road,Chennai", 
    openinghours: "8 AM-10 PM"
    ),
    ShopList(name: "Meat and Eat", 
    image: "assets/me.jpg", 
    rating: 4.8, 
    address: "Thoraipakkam,OMR road,Chennai", 
    openinghours: "11 AM-11 PM"
    ),
    ShopList(name: "CASA GRILL", 
    image: "assets/casagrill.jpg", 
    rating: 4.5, 
    address: "Dollar stop,OMR road,Chennai", 
    openinghours: "11 AM-11 PM"
    ),
    ShopList(name: "Dosa Corner", 
    image: "assets/dosacorner.png", 
    rating: 4, 
    address: "Karapakkam,opt to Atoms,Chennai", 
    openinghours: "7AM-9PM"
    ),
    ShopList(name: "Biryani Hub", 
    image: "assets/Biryanihub.png", 
    rating: 4.3, 
    address: "Sholinganallur,OMR road,Chennai", 
    openinghours: "12PM-10PM"
    ),
  ];
}