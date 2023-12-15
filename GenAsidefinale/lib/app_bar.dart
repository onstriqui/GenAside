import 'package:flutter/material.dart';



class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: [
        IconButton(
          icon: Icon(Icons.search, size: 50),
          onPressed: () {
            // Handle custom icon button press
          },
        ),
      ],
      backgroundColor: Colors.white ,
      elevation: 4.0,
      leading: Image.asset(
          'assets/logo.png', // Replace with your custom icon path
          width: 50,
        ),
      leadingWidth: 100,
    );
  }

  @override
  Size get preferredSize => AppBar().preferredSize;
}

//-------------------------------------------------------------------------------------------------------------------

class CBottomAppBar extends StatelessWidget implements PreferredSizeWidget {

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: const Color(0xFF547354),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            icon: Image.asset(
              'assets/academy.png', // Replace with your image path
            ),
            onPressed: () {
// Your action when the first icon is pressed
            },
          ),
          IconButton(
            icon: Image.asset(
              'assets/donate.png', // Replace with your image path
            ),
            onPressed: () {
// Your action when the second icon is pressed
            },
          ),
          IconButton(
            icon: Image.asset(
              'assets/contact_us.png', // Replace with your image path
            ),
              onPressed: () {
  // Your action when the third icon is pressed
              },
          ),
          const CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage('assets/profile.jpg'),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => CBottomAppBar().preferredSize;
}

