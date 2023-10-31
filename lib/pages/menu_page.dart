import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resto/components/button.dart';
import 'package:resto/components/food_tile.dart';
import 'package:resto/models/food.dart';

import 'food_details_page.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  // Food Menu
  List foodMenu = [
    //Salmon Sushi
    Food(
        name: "Salmon Sushi",
        price: '21.00',
        imagePath: 'images/broken.png',
        rating: "4.9"),
    // Tuna
    Food(
        name: "Tuna",
        price: '23.00',
        imagePath: 'images/eggs.png',
        rating: "4.3"),
    // Yakitori.
    Food(
        name: "Yakitori",
        price: '25.00',
        imagePath: 'images/one.png',
        rating: "4.4"),
  ];
  void navigateToDetailPage(int index) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => FoodDetailsPage(
          food: foodMenu[index],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(
          Icons.menu,
          color: Colors.grey[900],
        ),
        title: Center(
          child: Text(
            "Tokyo",
            style: TextStyle(
              color: Colors.grey[900],
            ),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20.0,
          ),
          Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 138, 60, 55),
              borderRadius: BorderRadius.circular(20.0),
            ),
            margin: const EdgeInsets.symmetric(horizontal: 25.0),
            padding: const EdgeInsets.all(25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // promo message
                Column(
                  children: [
                    Text(
                      'Get 30% Promo',
                      style: GoogleFonts.dmSerifDisplay(
                          fontSize: 20.0, color: Colors.white),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    // redeem button
                    MyButton(text: "Redeem", onTap: () {}),
                  ],
                ),
                //image
                Image.asset('images/cakes.png'),
              ],
            ),
          ),
          const SizedBox(
            height: 25.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                suffixIcon: const Icon(Icons.search),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 25.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              "Food Menu",
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.grey[800],
              ),
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          // List of popular food items
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: foodMenu.length,
              itemBuilder: (context, index) => FoodTile(
                food: foodMenu[index],
                onTap: () => navigateToDetailPage(index),
              ),
            ),
          ),
          // popular food
          const SizedBox(
            height: 25.0,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              "Suggestion",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(20.0),
            ),
            margin: const EdgeInsets.only(left: 25, right: 25, bottom: 25),
            padding: const EdgeInsets.all(20.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'images/eggs.png',
                  height: 60,
                ),
                const SizedBox(
                  width: 20.0,
                ),
                // name and price
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //name
                    Text(
                      'Salmon Eggs',
                      style: GoogleFonts.dmSerifDisplay(fontSize: 18.0),
                    ),
                    //Price
                    Text(
                      "\$21.00",
                      style: TextStyle(
                        color: Colors.grey[700],
                      ),
                    ),
                  ],
                ),
                Icon(
                  Icons.favorite,
                  color: Colors.grey[700],
                  size: 25.0,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
