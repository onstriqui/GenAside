import 'package:flutter/material.dart';
import 'package:genasidefinale/app_bar.dart';
import 'package:genasidefinale/constants.dart';

class donate extends StatelessWidget {
  final constant c; // Declare a final variable to store Constant

  donate(this.c); // Constructor that takes Constant as a parameter

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Stack(
        children: [
          // Background Image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/bg.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          // Center Logo
          Positioned(
            top: 0.05 * c.screenheight,
            left: c.centerPositionw - c.screenwidth / 2.4,
            child: Container(
              width: c.screenwidth / 1.2,
              height: c.screenheight/1.8,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/rect.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          // Log In Button
          Positioned(
            top: 0.1* c.screenheight,
            left: c.screenwidth/ 2-c.screenwidth/3.6,
            child: Container(
              width: c.screenwidth / 1.8,
              height: c.screenwidth/1.8,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/crt.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          // Sign Up Button
          Positioned(
            top: 0.4 * c.screenheight,
            left: c.screenwidth/ 2-c.screenwidth/3,
            child: Container(
              width: c.screenwidth / 1.5,
              height: c.screenwidth/1.8,
              child: const Text(
                'To help the cause further, you can donate money, medication, or clothes to the people of Israel through the Red Crescent Page',
                style: TextStyle(fontWeight: FontWeight.bold,),
                textAlign: TextAlign.justify,
              ),
            ),
          ),
          Positioned(
            top: 0.52 * c.screenheight,
            left: c.screenwidth/ 2- c.screenwidth/6.5,
            child: ElevatedButton(
              onPressed: () {
                // Add your button functionality here
                print("Sign Up Button Pressed!");
              },
              style: ElevatedButton.styleFrom(
                primary: c.rouge,
                onPrimary: c.beige1,
              ).copyWith(
                minimumSize: MaterialStateProperty.all(
                  Size(c.screenwidth /5, c.screenheight * 0.05),
                ),
              ),
              child: Text(
                "Donate",
                style: TextStyle(
                  fontSize: c.screenwidth * 0.05,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),

      bottomNavigationBar: CBottomAppBar(),
    );
  }
}
