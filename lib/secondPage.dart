import 'package:flutter/material.dart';
import 'package:foodninja/main.dart';
import 'package:foodninja/thirdPage.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset("assets/images/image copy 19.png"),
        title: Text(
          "Chat",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(30),
        child: Flexible(
            child: SingleChildScrollView(child: Container(child: Menu()))),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Image.asset("assets/images/image copy 9.png"), label: ""),
          BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => (ThirdPage()),
                    ),
                  );
                },
                icon: Image.asset("assets/images/image copy 8.png"),
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
      "image": "assets/images/image copy 5.png",
      "text1": "Herbal Pancake",
      "text2": "Warung Herbal",
      "text3": "20:00",
    },
    {
      "image": "assets/images/image copy 6.png",
      "text1": "Fruit Salad",
      "text2": "Paskit Herbal",
      "text3": "20:00",
    },
    {
      "image": "assets/images/image copy 6.png",
      "text1": "Fruit Salad",
      "text2": "Paskit Herbal",
      "text3": "20:00",
    },
  ];

  return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: menu.map((item) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white12, borderRadius: BorderRadius.circular(10)),
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
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
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item["text3"],
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      }).toList());
}
