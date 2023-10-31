import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resto/components/button.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 138, 60, 55),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment
              .spaceEvenly, // By screen size it will cover the whole Y-axis / fit on whole screen
          children: [
            const SizedBox(
              height: 25.0,
            ),
            // shope name..
            Text(
              "SUSHI MAN",
              style: GoogleFonts.dmSerifDisplay(
                fontSize: 40.0,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 25.0,
            ),
            // icon
            Padding(
              padding: const EdgeInsets.all(100.0),
              child: Image.asset('images/eggs.png'),
            ),
            const SizedBox(
              height: 25.0,
            ),
            // Titile
            Text(
              "The Taste of JAPANES FOOD..",
              style: GoogleFonts.dmSerifDisplay(
                fontSize: 40.0,
                color: Colors.white,
              ),
            ),
            // Subtitle
            Text(
              'Fell the taste of Japanes food from anywhere and anytime!',
              style: TextStyle(
                fontSize: 15.0,
                color: Colors.grey[200],
              ),
            ),
            const SizedBox(
              height: 25.0,
            ),
            // get the button started
            MyButton(
                text: "Get Started",
                onTap: () {
                  // Go to menu page
                  Navigator.pushNamed(context, '/menupage');
                }),
          ],
        ),
      ),
    );
  }
}
