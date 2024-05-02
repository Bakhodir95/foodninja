import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodninja/main.dart';
import 'package:foodninja/secondPage.dart';

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/image copy 18.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(height: 60),
            firstRow(),
            secondRow(),
            SizedBox(height: 20),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.orange.shade100,
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Soup  ",
                          style: TextStyle(
                            color: Colors.orange.shade800,
                            fontSize: 20,
                          ),
                        ),
                        Icon(
                          FontAwesomeIcons.xmark,
                          size: 15,
                          color: Colors.orange.shade800,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const Row(
              children: [
                Text(
                  "Popular Menu",
                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 30),
                ),
              ],
            ),
            Flexible(
                child: SingleChildScrollView(
                    child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Menu(),
            )))
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Image.asset("assets/images/image copy 11.png"), label: ""),
          BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SecondPage(),
                    ),
                  );
                },
                icon: Image.asset("assets/images/image copy 9.png"),
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Image.asset("assets/images/image copy 10.png"), label: ""),
          BottomNavigationBarItem(
              icon: Image.asset("assets/images/image copy 11.png"), label: ""),
        ],
        selectedItemColor: Colors.amber[800],
      ),
    );
  }
}

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
