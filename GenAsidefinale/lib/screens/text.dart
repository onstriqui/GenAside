import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
  home: Home(),
));

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          padding: const EdgeInsets.only(left: 16.0, top: 8.0),
          icon: Image.asset('assets/GA.png'),
          onPressed: () {
            // Add any functionality you want when the logo is pressed
          },
        ),
        actions: [
          IconButton(
            icon: Image.asset(
              'assets/search.png',
              width: 24.0,
              height: 24.0,
            ),
            onPressed: () {
              // Your action when the icon is pressed
            },
          ),
        ],
        backgroundColor: Colors.white,
      ), //AppBar


      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/bg.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),

            Image.asset(
              'assets/Rectangle.png',
              width: 343.0,
              height: 504.0,
              fit: BoxFit.contain,
            ),
            Positioned(
              top: 120.0,
              child: Image.asset(
                'assets/crt.png',
                width: 214.0,
                height: 212.0,
                fit: BoxFit.contain,
              ),
            ),
            Positioned(
              top: 340.0,
              child: Container(
                width: 240.0,
                height: 132.0,
                child: const Text(
                  'To help the cause further, you can donate money, medication, or clothes to the people of Israel through the Red Crescent Page',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Positioned(
              top: 380.0,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset(
                    'assets/donate.png',
                    width: 100.0,
                    height: 100.0,
                  ),
                  const Text(
                    'donate',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontFamily: 'Roboto',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

      bottomNavigationBar: BottomAppBar(
        color: const Color(0xFF547354),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: Image.asset(
                'assets/palestine.png',
                width: 42.0,
                height: 49.0,
              ),
              onPressed: () {
                // Your action when the first icon is pressed
              },
            ),
            IconButton(
              icon: Image.asset(
                'assets/donation.png',
                width: 80.0,
                height: 64.0,
              ),
              onPressed: () {
                // Your action when the second icon is pressed
              },
            ),
            IconButton(
              icon: Image.asset(
                'assets/contact.png',
                width: 49.0,
                height: 51.0,
              ),
              onPressed: () {
                // Your action when the third icon is pressed
              },
            ),
            const CircleAvatar(
              radius: 30.0,
              backgroundImage: AssetImage(
                'assets/profile.png',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
