import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodninja/firstPage.dart';
import 'package:foodninja/secondPage.dart';

void main(List<String> args) {
  runApp(FoodNinja());
}

class FoodNinja extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: FirstPage());
  }
}

Widget secondRow() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.orange.shade100,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextButton(
              onPressed: () {},
              child: Image.asset(
                "assets/images/image copy 16.png",
                width: 40,
              ),
            ),
            Text(
              "What do you want to order?",
              style: TextStyle(color: Colors.orange.shade500, fontSize: 17),
            )
          ],
        ),
      ),
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.orange.shade100,
        ),
        child: TextButton(
          onPressed: () {},
          child: Image.asset(
            "assets/images/image copy.png",
            width: 40,
          ),
        ),
      ),
    ],
  );
}

Widget firstRow() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        "Find Your\nFavourite Food",
        style: TextStyle(fontWeight: FontWeight.w900, fontSize: 30),
      ),
      Container(
        decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
        padding: EdgeInsets.all(5),
        child: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.notifications_active,
            size: 35,
            color: Colors.white,
          ),
        ),
      ),
    ],
  );
}

// ignore: non_constant_identifier_names
Widget Menu() {
  List<Map<String, dynamic>> menu = [
    {
      "image": "assets/images/image copy 2.png",
      "text1": "Herbal Pancake",
      "text2": "Warung Herbal",
      "text3": "\$7",
    },
    {
      "image": "assets/images/image copy 3.png",
      "text1": "Fruit Salad",
      "text2": "Paskit Herbal",
      "text3": "\$5",
    },
    {
      "image": "assets/images/image copy 3.png",
      "text1": "Fruit Salad",
      "text2": "Paskit Herbal",
      "text3": "\$5",
    },
    {
      "image": "assets/images/image copy 3.png",
      "text1": "Fruit Salad",
      "text2": "Paskit Herbal",
      "text3": "\$5",
    },
    {
      "image": "assets/images/image copy 3.png",
      "text1": "Fruit Salad",
      "text2": "Paskit Herbal",
      "text3": "\$5",
    },
  ];

  return Column(
      children: menu.map((item) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            item["image"],
            width: 100,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                item["text1"],
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
              ),
              Text(
                item["text2"],
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 20,
                  color: Colors.grey.shade400,
                ),
              ),
            ],
          ),
          Text(
            item["text3"],
            style: TextStyle(fontSize: 30, color: Colors.orange.shade700),
          ),
        ],
      ),
    );
  }).toList());
}
