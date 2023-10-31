import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resto/components/button.dart';
import 'package:resto/models/food.dart';

class FoodDetailsPage extends StatefulWidget {
  final Food food;
  const FoodDetailsPage({super.key, required this.food});

  @override
  State<FoodDetailsPage> createState() => _FoodDetailsPageState();
}

class _FoodDetailsPageState extends State<FoodDetailsPage> {
  // quantity
  int quantityCount = 0;
  // decrement quantity
  void decrementQuantity() {
    setState(() {
      quantityCount--;
    });
  }

  // increment count
  void incrementCount() {
    setState(() {
      quantityCount++;
    });
  }

  // Add To Cart Method
  void addTocart() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.grey[900],
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: ListView(
                children: [
                  // image
                  Image.asset(
                    widget.food.imagePath,
                    height: 200.0,
                  ),
                  const SizedBox(
                    height: 25.0,
                  ),
                  // rating + star
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.yellow[800],
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        widget.food.rating,
                        style: TextStyle(
                            color: Colors.grey[600],
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),

                  const SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    widget.food.name,
                    style: GoogleFonts.dmSerifDisplay(fontSize: 28.0),
                  ),
                  // description
                  Text(
                    "Description",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[900],
                        fontSize: 18.0),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    "The traditional cuisine of Japan (Japanese: washoku) is based on rice with miso soup and other dishes; there is an emphasis on seasonal ingredients. Side dishes often consist of fish, pickled vegetables, and vegetables cooked in broth. Seafood is common, often grilled, but also served raw as sashimi or in sushi",
                    style: TextStyle(color: Colors.grey[600], height: 2),
                  ),
                ],
              ),
            ),
          ),
          // price + qunatity + add to cart button
          Container(
            padding: const EdgeInsets.all(25.0),
            color: const Color.fromARGB(255, 138, 60, 55),
            child: Column(
              children: [
                // price + qunatity
                Row(
                  children: [
                    Text(
                      "\$${widget.food.price}",
                      style: const TextStyle(
                          fontSize: 18.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      width: 160.0,
                    ),
                    // qunatity
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(212, 135, 81, 77),
                            shape: BoxShape.circle,
                          ),
                          child: IconButton(
                            onPressed: decrementQuantity,
                            icon: const Icon(
                              Icons.remove,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 40.0,
                          child: Center(
                            child: Text(
                              quantityCount.toString(),
                              style: const TextStyle(
                                  fontSize: 18.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Container(
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(212, 135, 81, 77),
                            shape: BoxShape.circle,
                          ),
                          child: IconButton(
                            onPressed: incrementCount,
                            icon: const Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25.0,
                ),
                // add to cart button
                MyButton(text: "Add To Cart", onTap: addTocart),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
