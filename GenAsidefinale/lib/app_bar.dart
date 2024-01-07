import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:genasidefinale/constants.dart';
import 'package:genasidefinale/screens/scrollpage.dart';
import 'package:genasidefinale/screens/donate.dart';
import 'package:genasidefinale/screens/login.dart';
import 'package:genasidefinale/screens/signup.dart';
import 'package:genasidefinale/screens/profile.dart';


class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: kToolbarHeight,
      actions: [
        IconButton(
          icon: Icon(Icons.search, size: 50),
          onPressed: () {
            // Handle custom icon button press
            showSearchDialog(context);
          },
        ),
      ],
      backgroundColor: Colors.white ,
      elevation: 4.0,
      leading: Row(
        children: [
          SizedBox(width: 10.0),
          InkWell(
            onTap: () {
              // Handle logo click
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => scrollpage()),
              );
            },
            child: Image.asset(
              'assets/logo.png', // Replace with your custom logo path
              width:60,
            ),
          ),
          SizedBox(width: 10.0),
          InkWell(
            onTap: () {
              showoptionDialog(context);
            },
            child: Image.asset(
              'assets/hov.png', // Replace with your second logo path
            ),
          ),
        ],
      ),
      leadingWidth: 100,
    );
  }

  @override
  Size get preferredSize => AppBar().preferredSize;

  void showSearchDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Search'),
          content: TextField(
            decoration: InputDecoration(
              labelText: 'Search here',
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                // Implement search action
                Navigator.of(context).pop();
              },
              child: Text('Search'),
            ),
          ],
        );
      },
    );
  }


  void showoptionDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        constant c = constant(context);
        return AlertDialog(
          content: Container(
            width: 200.0, // Set the width
            height: 120.0, // Set the height
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(height: 15.0),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => login()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: c.vert,
                    onPrimary: c.vert1,
                    side: BorderSide(color: c.vert, width: 2.0),
                  ).copyWith(
                    minimumSize: MaterialStateProperty.all(
                      Size(c.screenwidth - 40, c.screenheight * 0.05),
                    ),
                  ),
                  child: Text(
                    "Log In",
                    style: TextStyle(
                      fontSize: c.screenwidth * 0.05,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => signup()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: c.vert,
                    onPrimary: c.vert1,
                    side: BorderSide(color: c.vert, width: 2.0),
                  ).copyWith(
                    minimumSize: MaterialStateProperty.all(
                      Size(c.screenwidth - 40, c.screenheight * 0.05),
                    ),
                  ),
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                      fontSize: c.screenwidth * 0.05,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
          actions: [
          ],
        );
      },
    );
  }
}

//-------------------------------------------------------------------------------------------------------------------

class CBottomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    constant c = constant(context);
    return BottomAppBar(
      color:  c.vert1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              // Your action when the first icon is pressed
              launch("https://www.thepalestineacademy.com");
            },
            child: Image.asset(
              'assets/academy.png', // Replace with your image path
            ),
          ),
          InkWell(
            onTap: () {
              // Handle logo click
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => donate()),
              );
            },
            child: Image.asset(
              'assets/donate.png',
              width: 35, // Replace with your image path
            ),
          ),
          InkWell(
            onTap: () {
              // Your action when the third icon is pressed
              Navigator.of(context).pushNamed('/brand.dart');
            },
            child: Image.asset(
              'assets/contact_us.png', // Replace with your image path
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => profile()),
              );
            },
            child: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('assets/profile.jpg'),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => CBottomAppBar().preferredSize;
}
